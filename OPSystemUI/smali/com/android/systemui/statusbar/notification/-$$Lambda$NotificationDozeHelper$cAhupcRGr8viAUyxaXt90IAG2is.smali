.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationDozeHelper$cAhupcRGr8viAUyxaXt90IAG2is;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationDozeHelper$cAhupcRGr8viAUyxaXt90IAG2is;->f$0:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationDozeHelper$cAhupcRGr8viAUyxaXt90IAG2is;->f$0:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->lambda$setIntensityDark$0(Ljava/util/function/Consumer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
