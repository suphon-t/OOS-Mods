.class Lcom/android/systemui/statusbar/policy/Clock$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/Clock;
    .param p2, "context"    # Landroid/content/Context;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$1;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->access$002(Lcom/android/systemui/statusbar/policy/Clock;I)I

    .line 136
    return-void
.end method
