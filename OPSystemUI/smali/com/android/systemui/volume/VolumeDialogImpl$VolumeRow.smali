.class Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedIconRes:I

.field private cachedTint:Landroid/content/res/ColorStateList;

.field private defaultStream:Z

.field private dndIcon:Landroid/widget/FrameLayout;

.field private header:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private slider:Landroid/widget/SeekBar;

.field private ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

.field private stream:I

.field private themeColorMode:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    .line 1648
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    .line 1654
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->themeColorMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$1;

    .line 1630
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->dndIcon:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/VolumeDialogController$StreamState;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Z

    .line 1630
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/content/res/ColorStateList;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->cachedTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->themeColorMode:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->themeColorMode:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # J

    .line 1630
    iput-wide p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # I

    .line 1630
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Z

    .line 1630
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Z

    .line 1630
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->defaultStream:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;
    .param p1, "x1"    # Landroid/widget/TextView;

    .line 1630
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$VolumeRow;->header:Landroid/widget/TextView;

    return-object p1
.end method
