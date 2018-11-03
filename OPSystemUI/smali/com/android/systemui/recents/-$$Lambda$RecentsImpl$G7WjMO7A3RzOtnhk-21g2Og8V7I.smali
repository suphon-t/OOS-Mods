.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Intent;

.field private final synthetic f$1:Landroid/app/ActivityOptions;

.field private final synthetic f$2:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;->f$1:Landroid/app/ActivityOptions;

    iput-object p3, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;->f$2:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;->f$1:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$G7WjMO7A3RzOtnhk-21g2Og8V7I;->f$2:Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/RecentsImpl;->lambda$startRecentsActivity$4(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/systemui/shared/recents/view/AppTransitionAnimationSpecsFuture;)V

    return-void
.end method
