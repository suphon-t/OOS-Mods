.class public final synthetic Lcom/android/systemui/recents/views/-$$Lambda$2_yYbS189Yb53TwKAnkQBhUWOR4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/-$$Lambda$2_yYbS189Yb53TwKAnkQBhUWOR4;->f$0:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/-$$Lambda$2_yYbS189Yb53TwKAnkQBhUWOR4;->f$0:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;->composeSpecsSynchronous()V

    return-void
.end method
