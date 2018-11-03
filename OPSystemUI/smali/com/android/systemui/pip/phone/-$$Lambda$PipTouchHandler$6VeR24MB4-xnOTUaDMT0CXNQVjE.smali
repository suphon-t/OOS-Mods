.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$6VeR24MB4-xnOTUaDMT0CXNQVjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/shared/system/InputConsumerController$TouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$6VeR24MB4-xnOTUaDMT0CXNQVjE;->f$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$6VeR24MB4-xnOTUaDMT0CXNQVjE;->f$0:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->lambda$6VeR24MB4-xnOTUaDMT0CXNQVjE(Lcom/android/systemui/pip/phone/PipTouchHandler;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
