.class synthetic Lcom/android/systemui/util/ThemeColorUtils$1;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ThemeColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oneplus$custom$utils$OpCustomizeSettings$CUSTOM_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 153
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->values()[Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/util/ThemeColorUtils$1;->$SwitchMap$com$oneplus$custom$utils$OpCustomizeSettings$CUSTOM_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils$1;->$SwitchMap$com$oneplus$custom$utils$OpCustomizeSettings$CUSTOM_TYPE:[I

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils$1;->$SwitchMap$com$oneplus$custom$utils$OpCustomizeSettings$CUSTOM_TYPE:[I

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
