.class public Lcom/oneplus/custom/utils/OpCustomizeSettingsG1;
.super Lcom/oneplus/custom/utils/OpCustomizeSettings;
.source "OpCustomizeSettingsG1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/oneplus/custom/utils/OpCustomizeSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCustomization()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    .locals 2

    .line 16
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 17
    .local v0, "result":Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getCustFlagVal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 23
    goto :goto_0

    .line 19
    :pswitch_1
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    .line 20
    nop

    .line 27
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
