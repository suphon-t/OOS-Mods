.class public final synthetic Lcom/android/systemui/statusbar/stack/-$$Lambda$StackStateAnimator$583ttX1KKMjNzUBxpRTbg9B4uQA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/ExpandableView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$StackStateAnimator$583ttX1KKMjNzUBxpRTbg9B4uQA;->f$0:Lcom/android/systemui/statusbar/ExpandableView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$StackStateAnimator$583ttX1KKMjNzUBxpRTbg9B4uQA;->f$0:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->lambda$processAnimationEvents$0(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method
