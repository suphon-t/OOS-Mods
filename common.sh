#!/bin/sh

BASE_DIR="$( cd "$( dirname "$0" )" >/dev/null && pwd )"
source $BASE_DIR/env.sh
OUT_DIR=$BASE_DIR/out
APKS_DIR=$BASE_DIR/apks
APPS_DIR=$BASE_DIR/apps
APPS_OUT_DIR=$OUT_DIR/priv-app
PREBUILTS_DIR=$BASE_DIR/prebuilts
TMP_DIR=$BASE_DIR/tmp

mkdir -p $APPS_OUT_DIR

pushd () {
  command pushd "$@" > /dev/null
}

popd () {
  command popd "$@" > /dev/null
}

function get_dir() {
  pushd $1
  pwd
  popd
}

function get_name() {
  pushd "$1"
  echo ${PWD##*/}
  popd
}

function init_overlays() {
  OVERLAYS_DIR=$BASE_DIR/overlays
  OVERLAYS_OUT_DIR=$OUT_DIR/vendor/overlay
  mkdir -p $OVERLAYS_DIR
  mkdir -p $OVERLAYS_OUT_DIR
}

function compile_overlay() {
  local NAME=$1
  DIR=$OVERLAYS_DIR/$NAME
  local MANIFEST=$DIR/AndroidManifest.xml
  local RESOURCES=$DIR/res
  local OUT=$OVERLAYS_OUT_DIR/$NAME.apk
  local FRAMEWORK="$BASE_DIR/framework-res.apk"

  local args=("p" "-M" $MANIFEST '-I' $FRAMEWORK '-S' $RESOURCES "-F" $OUT "-f")

  if [ -f "$DIR/links" ]
  then
    while IFS='' read -r link || [[ -n "$link" ]]; do
      args+=('-I')
      args+=($APKS_DIR/$link)
    done < "$DIR/links"
  fi

  aapt "${args[@]}" && echo "Compiled overlay: $NAME" && sign_apk $OUT
}

function compile_overlays() {
  OUT=$OUT_DIR/overlays
  mkdir -p $OUT
  pushd $OVERLAYS_DIR
  for overlay in */ ; do
    compile_overlay $(get_name $overlay)
  done
  popd
}

function compile_app() {
  NAME=$1

  TMP=$TMP_DIR/$NAME
  rm -rf $TMP
  mkdir $TMP

  OUT=$APPS_OUT_DIR/$NAME
  rm -rf $OUT
  mkdir -p $OUT
  touch $OUT/.replace

  if [ -z $2 ]
  then
    APP=$APPS_DIR/$NAME
  else
    APP=$(get_dir $BASE_DIR/$2)
  fi

  apktool b $APP
  pushd $TMP
  unzip -q $APKS_DIR/$NAME.apk
  cp $APP/build/apk/classes.dex .
  zip -q -r -0 $OUT/$NAME.apk .
  rm -rf $TMP
  popd
}

sign_apk() {
  echo $KS_PASSWORD | apksigner sign --ks $KS_PATH $1 > /dev/null
  echo "Signed APK: $1"
}

pack_magisk_module() {
  rm -rf $BASE_DIR/module.zip
  rm -rf magisk/system/priv-app
  rm -rf magisk/system/vendor
  mkdir -p magisk/system/priv-app
  echo "Copying prebuilts..."
  cp -r $PREBUILTS_DIR/ magisk/system/priv-app
  echo "Copying apps..."
  cp -r $APPS_OUT_DIR/ magisk/system/priv-app
  echo "Copying overlays..."
  mkdir -p magisk/system/vendor
  cp -r $OVERLAYS_OUT_DIR magisk/system/vendor/overlay
  pushd $BASE_DIR/magisk
  zip -r $BASE_DIR/module.zip .
  popd
}

pack_magisk_cleanup_module() {
  rm -rf $BASE_DIR/module_cleanup.zip
  pushd $BASE_DIR/magisk_cleanup
  zip -r $BASE_DIR/module_cleanup.zip .
  popd
}

init_overlays
