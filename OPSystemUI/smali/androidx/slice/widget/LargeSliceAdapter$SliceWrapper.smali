.class public Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;
.super Ljava/lang/Object;
.source "LargeSliceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/LargeSliceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SliceWrapper"
.end annotation


# instance fields
.field private final mId:J

.field private final mItem:Landroidx/slice/SliceItem;

.field private final mType:I


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;I)V
    .locals 2
    .param p1, "item"    # Landroidx/slice/SliceItem;
    .param p2, "idGen"    # Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;
    .param p3, "mode"    # I

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mItem:Landroidx/slice/SliceItem;

    .line 205
    invoke-static {p1}, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->getFormat(Landroidx/slice/SliceItem;)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mType:I

    .line 206
    invoke-virtual {p2, p1, p3}, Landroidx/slice/widget/LargeSliceAdapter$IdGenerator;->getId(Landroidx/slice/SliceItem;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mId:J

    .line 207
    return-void
.end method

.method static synthetic access$100(Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;)I
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    .line 198
    iget v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mType:I

    return v0
.end method

.method static synthetic access$200(Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;)J
    .locals 2
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    .line 198
    iget-wide v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mId:J

    return-wide v0
.end method

.method static synthetic access$300(Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;)Landroidx/slice/SliceItem;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;

    .line 198
    iget-object v0, p0, Landroidx/slice/widget/LargeSliceAdapter$SliceWrapper;->mItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public static getFormat(Landroidx/slice/SliceItem;)I
    .locals 2
    .param p0, "item"    # Landroidx/slice/SliceItem;

    .line 210
    const-string v0, "message"

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    const/4 v0, 0x0

    const-string v1, "source"

    invoke-static {p0, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x4

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 218
    :cond_1
    const-string v0, "horizontal"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    const/4 v0, 0x3

    return v0

    .line 221
    :cond_2
    const-string v0, "list_item"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    const/4 v0, 0x2

    return v0

    .line 224
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
