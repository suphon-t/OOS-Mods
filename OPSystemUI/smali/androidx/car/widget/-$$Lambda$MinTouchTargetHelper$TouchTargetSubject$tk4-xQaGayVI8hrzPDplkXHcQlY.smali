.class public final synthetic Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;->f$0:Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

    iput p2, p0, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;->f$1:I

    iput-object p3, p0, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;->f$0:Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;

    iget v1, p0, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;->f$1:I

    iget-object v2, p0, Landroidx/car/widget/-$$Lambda$MinTouchTargetHelper$TouchTargetSubject$tk4-xQaGayVI8hrzPDplkXHcQlY;->f$2:Landroid/view/View;

    invoke-static {v0, v1, v2}, Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;->lambda$hasMinTouchSize$40(Landroidx/car/widget/MinTouchTargetHelper$TouchTargetSubject;ILandroid/view/View;)V

    return-void
.end method
