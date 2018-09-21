.class Landroid/support/design/widget/StateListAnimator$Tuple;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tuple"
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

.field final specs:[I


# direct methods
.method constructor <init>([ILandroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->specs:[I

    .line 110
    iput-object p2, p0, Landroid/support/design/widget/StateListAnimator$Tuple;->animator:Landroid/animation/ValueAnimator;

    .line 111
    return-void
.end method
