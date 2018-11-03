.class public abstract Lcom/android/systemui/settings/CurrentUserTracker;
.super Ljava/lang/Object;
.source "CurrentUserTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    }
.end annotation


# instance fields
.field private mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-static {p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;-><init>(Lcom/android/systemui/settings/CurrentUserTracker;)V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Ljava/util/function/Consumer;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    .line 43
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public startTracking()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->access$000(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V

    .line 51
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mUserReceiver:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCallback:Ljava/util/function/Consumer;

    invoke-static {v0, v1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->access$100(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V

    .line 55
    return-void
.end method
