.class public abstract Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;
.super Landroid/os/Binder;
.source "IRecentsNonSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const-string v0, "com.android.systemui.recents.IRecentsNonSystemUserCallbacks"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->showCurrentUserToast(II)V

    .line 144
    return v2

    .line 130
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 133
    .local v1, "_arg0":F
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onDraggingInRecentsEnded(F)V

    .line 134
    return v2

    .line 122
    .end local v1    # "_arg0":F
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 125
    .restart local v1    # "_arg0":F
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onDraggingInRecents(F)V

    .line 126
    return v2

    .line 103
    .end local v1    # "_arg0":F
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 109
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 111
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .local v5, "_arg3":Landroid/graphics/Rect;
    goto :goto_0

    .line 115
    .end local v5    # "_arg3":Landroid/graphics/Rect;
    :cond_0
    const/4 v5, 0x0

    .line 117
    .restart local v5    # "_arg3":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->splitPrimaryTask(IIILandroid/graphics/Rect;)V

    .line 118
    return v2

    .line 97
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/graphics/Rect;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->onConfigurationChanged()V

    .line 99
    return v2

    .line 89
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->toggleRecents(I)V

    .line 93
    return v2

    .line 79
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 83
    .local v3, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    nop

    .line 84
    .local v1, "_arg1":Z
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->hideRecents(ZZ)V

    .line 85
    return v2

    .line 65
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    .line 69
    .restart local v3    # "_arg0":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    .line 71
    .local v4, "_arg1":Z
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    nop

    .line 73
    .local v1, "_arg2":Z
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 74
    .local v5, "_arg3":I
    invoke-virtual {p0, v3, v4, v1, v5}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->showRecents(ZZZI)V

    .line 75
    return v2

    .line 59
    .end local v1    # "_arg2":Z
    .end local v3    # "_arg0":Z
    .end local v4    # "_arg1":Z
    .end local v5    # "_arg3":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->cancelPreloadingRecents()V

    .line 61
    return v2

    .line 53
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->preloadRecents()V

    .line 55
    return v2

    .line 48
    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
