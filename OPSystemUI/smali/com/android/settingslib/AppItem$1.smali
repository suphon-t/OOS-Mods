.class Lcom/android/settingslib/AppItem$1;
.super Ljava/lang/Object;
.source "AppItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/AppItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/settingslib/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/AppItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    new-instance v0, Lcom/android/settingslib/AppItem;

    invoke-direct {v0, p1}, Lcom/android/settingslib/AppItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settingslib/AppItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settingslib/AppItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/settingslib/AppItem;
    .locals 1
    .param p1, "size"    # I

    .line 82
    new-array v0, p1, [Lcom/android/settingslib/AppItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settingslib/AppItem$1;->newArray(I)[Lcom/android/settingslib/AppItem;

    move-result-object p1

    return-object p1
.end method
