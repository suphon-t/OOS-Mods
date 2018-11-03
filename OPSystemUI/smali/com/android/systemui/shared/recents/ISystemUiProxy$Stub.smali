.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/ISystemUiProxy;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 41
    const-string v12, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 42
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_6

    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    .line 143
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 132
    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 136
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v14, v13

    nop

    :cond_0
    move v1, v14

    .line 137
    .local v1, "_arg1":Z
    invoke-virtual {v8, v0, v1}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setBackButtonAlpha(FZ)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    return v13

    .line 118
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":Z
    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 120
    .local v0, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v0, v11, v13}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    :goto_0
    return v13

    .line 109
    .end local v0    # "_result":Landroid/graphics/Rect;
    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v14, v13

    nop

    :cond_2
    move v0, v14

    .line 112
    .local v0, "_arg0":Z
    invoke-virtual {v8, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onOverviewShown(Z)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v13

    .line 102
    .end local v0    # "_arg0":Z
    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->onSplitScreenInvoked()V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    return v13

    .line 93
    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->setInteractionState(I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v13

    .line 84
    .end local v0    # "_arg0":I
    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0    # "_arg0":I
    invoke-virtual {v8, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->startScreenPinning(I)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v13

    .line 51
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 57
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_1
    move-object v1, v0

    goto :goto_2

    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 60
    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 62
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 64
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 66
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 68
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v6, v13

    goto :goto_3

    :cond_4
    move v6, v14

    .line 70
    .local v6, "_arg5":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 71
    .local v19, "_arg6":I
    move-object v0, v8

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;->screenshot(Landroid/graphics/Rect;IIIIZI)Lcom/android/systemui/shared/system/GraphicBufferCompat;

    move-result-object v0

    .line 72
    .local v0, "_result":Lcom/android/systemui/shared/system/GraphicBufferCompat;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    invoke-virtual {v0, v11, v13}, Lcom/android/systemui/shared/system/GraphicBufferCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 78
    :cond_5
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    :goto_4
    return v13

    .line 46
    .end local v0    # "_result":Lcom/android/systemui/shared/system/GraphicBufferCompat;
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    .end local v6    # "_arg5":Z
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":I
    .end local v19    # "_arg6":I
    :cond_6
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
