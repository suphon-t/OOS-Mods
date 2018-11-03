.class Lcom/android/systemui/qs/TouchAnimator$1;
.super Landroid/util/FloatProperty;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/qs/TouchAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/qs/TouchAnimator;)Ljava/lang/Float;
    .locals 1
    .param p1, "touchAnimator"    # Lcom/android/systemui/qs/TouchAnimator;

    .line 87
    invoke-static {p1}, Lcom/android/systemui/qs/TouchAnimator;->access$000(Lcom/android/systemui/qs/TouchAnimator;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 79
    check-cast p1, Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/TouchAnimator$1;->get(Lcom/android/systemui/qs/TouchAnimator;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/systemui/qs/TouchAnimator;F)V
    .locals 0
    .param p1, "touchAnimator"    # Lcom/android/systemui/qs/TouchAnimator;
    .param p2, "value"    # F

    .line 82
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 83
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 79
    check-cast p1, Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/TouchAnimator$1;->setValue(Lcom/android/systemui/qs/TouchAnimator;F)V

    return-void
.end method
