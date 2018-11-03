.class Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;
.super Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatKeyframeSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;"
    }
.end annotation


# instance fields
.field private final mProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:[F


# direct methods
.method public constructor <init>(Landroid/util/Property;[F)V
    .locals 1
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;, "Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet<TT;>;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    array-length v0, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;-><init>(I)V

    .line 234
    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    .line 235
    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    .line 236
    return-void
.end method


# virtual methods
.method protected interpolate(IFLjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "amount"    # F
    .param p3, "target"    # Ljava/lang/Object;

    .line 240
    .local p0, "this":Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;, "Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 241
    .local v0, "firstFloat":F
    iget-object v1, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mValues:[F

    aget v1, v1, p1

    .line 242
    .local v1, "secondFloat":F
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;->mProperty:Landroid/util/Property;

    sub-float v3, v1, v0

    mul-float/2addr v3, p2

    add-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    return-void
.end method
