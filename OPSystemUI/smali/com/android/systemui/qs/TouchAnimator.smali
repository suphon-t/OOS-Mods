.class public Lcom/android/systemui/qs/TouchAnimator;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;,
        Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;,
        Lcom/android/systemui/qs/TouchAnimator$Builder;,
        Lcom/android/systemui/qs/TouchAnimator$Listener;,
        Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
    }
.end annotation


# static fields
.field private static final POSITION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/qs/TouchAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEndDelay:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

.field private mLastT:F

.field private final mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private final mSpan:F

.field private final mStartDelay:F

.field private final mTargets:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$1;

    const-string v1, "position"

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Landroid/util/FloatProperty;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V
    .locals 2
    .param p1, "targets"    # [Ljava/lang/Object;
    .param p2, "keyframeSets"    # [Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
    .param p3, "startDelay"    # F
    .param p4, "endDelay"    # F
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "listener"    # Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    .line 46
    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    .line 48
    iput p3, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    .line 49
    iput p4, p0, Lcom/android/systemui/qs/TouchAnimator;->mEndDelay:F

    .line 50
    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mEndDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    .line 51
    iput-object p5, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 53
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;Lcom/android/systemui/qs/TouchAnimator$1;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;
    .param p2, "x1"    # [Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Lcom/android/systemui/qs/TouchAnimator$Listener;
    .param p7, "x6"    # Lcom/android/systemui/qs/TouchAnimator$1;

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/qs/TouchAnimator;-><init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/TouchAnimator;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/TouchAnimator;

    .line 33
    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    return v0
.end method

.method static synthetic access$100()Landroid/util/FloatProperty;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Landroid/util/FloatProperty;

    return-object v0
.end method


# virtual methods
.method public setPosition(F)V
    .locals 4
    .param p1, "fraction"    # F

    .line 56
    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 57
    .local v0, "t":F
    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 60
    :cond_0
    iget v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    .line 61
    return-void

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    if-eqz v3, :cond_6

    .line 64
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-interface {v1}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtEnd()V

    goto :goto_0

    .line 66
    :cond_2
    cmpl-float v3, v0, v2

    if-nez v3, :cond_3

    .line 67
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-interface {v1}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtStart()V

    goto :goto_0

    .line 68
    :cond_3
    iget v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpg-float v2, v3, v2

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_5

    .line 69
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-interface {v1}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationStarted()V

    .line 71
    :cond_5
    :goto_0
    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    .line 73
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 74
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->setValue(FLjava/lang/Object;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    .end local v1    # "i":I
    :cond_7
    return-void
.end method
