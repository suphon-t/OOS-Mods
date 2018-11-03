.class Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
.super Ljava/lang/Object;
.source "CarVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/CarVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeItem"
.end annotation


# instance fields
.field private defaultItem:Z

.field private icon:I

.field private listItem:Landroidx/car/widget/SeekbarListItem;

.field private progress:I

.field private rank:I

.field private usage:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->defaultItem:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/CarVolumeDialogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$1;

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 595
    iget-boolean v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->defaultItem:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p1, "x1"    # Z

    .line 595
    iput-boolean p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->defaultItem:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p1, "x1"    # I

    .line 595
    iput p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->usage:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 595
    iget v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->rank:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p1, "x1"    # I

    .line 595
    iput p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->rank:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 595
    iget v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->icon:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p1, "x1"    # I

    .line 595
    iput p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->icon:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)Landroidx/car/widget/SeekbarListItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 595
    iget-object v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->listItem:Landroidx/car/widget/SeekbarListItem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;Landroidx/car/widget/SeekbarListItem;)Landroidx/car/widget/SeekbarListItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p1, "x1"    # Landroidx/car/widget/SeekbarListItem;

    .line 595
    iput-object p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->listItem:Landroidx/car/widget/SeekbarListItem;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;

    .line 595
    iget v0, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->progress:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;
    .param p1, "x1"    # I

    .line 595
    iput p1, p0, Lcom/android/systemui/volume/CarVolumeDialogImpl$VolumeItem;->progress:I

    return p1
.end method
