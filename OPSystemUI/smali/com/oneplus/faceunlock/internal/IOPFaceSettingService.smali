.class public interface abstract Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
.super Ljava/lang/Object;
.source "IOPFaceSettingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract checkState(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeFace(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
