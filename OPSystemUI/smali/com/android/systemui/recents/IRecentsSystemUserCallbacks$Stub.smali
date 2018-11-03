.class public abstract Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;
.super Landroid/os/Binder;
.source "IRecentsSystemUserCallbacks.java"

# interfaces
.implements Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    const-string v0, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    if-eqz v1, :cond_1

    .line 33
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks;

    return-object v1

    .line 35
    :cond_1
    new-instance v1, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const-string v0, "com.android.systemui.recents.IRecentsSystemUserCallbacks"

    .line 44
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 112
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 115
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->setWaitingForTransitionStartEvent(Z)V

    .line 116
    return v2

    .line 106
    .end local v1    # "_arg0":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendDockedFirstAnimationFrameEvent()V

    .line 108
    return v2

    .line 100
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendLaunchRecentsEvent()V

    .line 102
    return v2

    .line 85
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .local v3, "_arg1":Landroid/graphics/Rect;
    goto :goto_0

    .line 93
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    .line 95
    .restart local v3    # "_arg1":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V

    .line 96
    return v2

    .line 79
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->sendRecentsDrawnEvent()V

    .line 81
    return v2

    .line 71
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->startScreenPinning(I)V

    .line 75
    return v2

    .line 63
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 66
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->updateRecentsVisibility(Z)V

    .line 67
    return v2

    .line 53
    .end local v1    # "_arg0":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 57
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 58
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;->registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V

    .line 59
    return v2

    .line 48
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
