.class public final synthetic Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/settings/CurrentUserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;->f$0:Lcom/android/systemui/settings/CurrentUserTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/-$$Lambda$JYv4q5Exc5xk6WCK6WtC6eC0sA8;->f$0:Lcom/android/systemui/settings/CurrentUserTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;->onUserSwitched(I)V

    return-void
.end method
