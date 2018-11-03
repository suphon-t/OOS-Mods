.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$JvvKf9TjD9dCJ7IIsa7b5IwPSNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$JvvKf9TjD9dCJ7IIsa7b5IwPSNk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$JvvKf9TjD9dCJ7IIsa7b5IwPSNk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$getStatusBarWindowTouchListener$12(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
