.class public Lcom/android/systemui/statusbar/StatusBarState;
.super Ljava/lang/Object;
.source "StatusBarState.java"


# direct methods
.method public static toShortString(I)Ljava/lang/String;
    .locals 2
    .param p0, "x"    # I

    .line 47
    packed-switch p0, :pswitch_data_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_0
    const-string v0, "FS_USRSW"

    return-object v0

    .line 51
    :pswitch_1
    const-string v0, "SHD_LCK"

    return-object v0

    .line 53
    :pswitch_2
    const-string v0, "KGRD"

    return-object v0

    .line 49
    :pswitch_3
    const-string v0, "SHD"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
