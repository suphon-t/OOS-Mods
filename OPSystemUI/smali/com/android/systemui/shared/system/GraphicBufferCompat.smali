.class public Lcom/android/systemui/shared/system/GraphicBufferCompat;
.super Ljava/lang/Object;
.source "GraphicBufferCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/shared/system/GraphicBufferCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Landroid/graphics/GraphicBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lcom/android/systemui/shared/system/GraphicBufferCompat$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/GraphicBufferCompat$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/GraphicBufferCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/GraphicBuffer;)V
    .locals 0
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/shared/system/GraphicBufferCompat;->mBuffer:Landroid/graphics/GraphicBuffer;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/GraphicBuffer;

    iput-object v0, p0, Lcom/android/systemui/shared/system/GraphicBufferCompat;->mBuffer:Landroid/graphics/GraphicBuffer;

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 46
    iget-object v0, p0, Lcom/android/systemui/shared/system/GraphicBufferCompat;->mBuffer:Landroid/graphics/GraphicBuffer;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/GraphicBuffer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    return-void
.end method
