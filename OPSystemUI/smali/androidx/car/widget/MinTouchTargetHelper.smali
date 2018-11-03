.class Landroidx/car/widget/MinTouchTargetHelper;
.super Ljava/lang/Object;
.source "MinTouchTargetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;
    }
.end annotation


# direct methods
.method static ensureThat(Landroid/view/View;)Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 39
    if-eqz p0, :cond_0

    .line 42
    new-instance v0, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;-><init>(Landroid/view/View;Landroidx/car/widget/MinTouchTargetHelper$1;)V

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
