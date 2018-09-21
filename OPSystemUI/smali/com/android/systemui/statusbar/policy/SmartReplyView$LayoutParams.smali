.class Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SmartReplyView.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# instance fields
.field private show:Z

.field private squeezeStatus:I


# direct methods
.method private constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 646
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 639
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 647
    return-void
.end method

.method synthetic constructor <init>(IILcom/android/systemui/statusbar/policy/SmartReplyView$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/systemui/statusbar/policy/SmartReplyView$1;

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(II)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 642
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 639
    iput v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 643
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/SmartReplyView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/util/AttributeSet;
    .param p3, "x2"    # Lcom/android/systemui/statusbar/policy/SmartReplyView$1;

    .line 616
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 616
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .param p1, "x1"    # Z

    .line 616
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;

    .line 616
    iget v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
    .param p1, "x1"    # I

    .line 616
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    return p1
.end method


# virtual methods
.method isShown()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 651
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    return v0
.end method
