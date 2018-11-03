.class public Lcom/android/systemui/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final ACCELERATE:Landroid/view/animation/Interpolator;

.field public static final ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final BOUNCE:Landroid/view/animation/Interpolator;

.field public static final CUSTOM_40_40:Landroid/view/animation/Interpolator;

.field public static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

.field public static final ICON_OVERSHOT:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

.field public static final TOUCH_RESPONSE:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 34
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 35
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v4, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v4, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v4, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 40
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x40200000    # 2.5f

    invoke-direct {v0, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f19999a    # 0.6f

    invoke-direct {v0, v2, v4, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->CUSTOM_40_40:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->HEADS_UP_APPEAR:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v0, v2, v4, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->ICON_OVERSHOT:Landroid/view/animation/Interpolator;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->PANEL_CLOSE_ACCELERATED:Landroid/view/animation/Interpolator;

    .line 47
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/Interpolators;->BOUNCE:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    return-void
.end method
