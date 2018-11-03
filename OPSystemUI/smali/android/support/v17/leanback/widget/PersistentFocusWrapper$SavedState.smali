.class Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "PersistentFocusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PersistentFocusWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSelectedPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState$1;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    .line 137
    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 140
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 141
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    iget v0, p0, Landroid/support/v17/leanback/widget/PersistentFocusWrapper$SavedState;->mSelectedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method
