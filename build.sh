#!/bin/sh

. ./common.sh

compile_app OPSystemUI OPSystemUI && compile_overlays && pack_magisk_module && pack_magisk_cleanup_module
