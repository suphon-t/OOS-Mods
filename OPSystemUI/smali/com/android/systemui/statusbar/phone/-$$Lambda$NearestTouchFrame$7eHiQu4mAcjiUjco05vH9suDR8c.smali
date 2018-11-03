.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$7eHiQu4mAcjiUjco05vH9suDR8c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NearestTouchFrame;

.field private final synthetic f$1:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NearestTouchFrame;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$7eHiQu4mAcjiUjco05vH9suDR8c;->f$0:Lcom/android/systemui/statusbar/phone/NearestTouchFrame;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$7eHiQu4mAcjiUjco05vH9suDR8c;->f$1:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$7eHiQu4mAcjiUjco05vH9suDR8c;->f$0:Lcom/android/systemui/statusbar/phone/NearestTouchFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$7eHiQu4mAcjiUjco05vH9suDR8c;->f$1:Landroid/view/MotionEvent;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$findNearestChild$1(Lcom/android/systemui/statusbar/phone/NearestTouchFrame;Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
