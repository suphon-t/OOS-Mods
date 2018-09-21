.class public abstract Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ParcelableExtendableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "TM;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method
