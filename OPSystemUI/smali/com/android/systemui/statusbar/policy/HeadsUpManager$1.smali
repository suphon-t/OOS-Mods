.class Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;
.super Landroid/database/ContentObserver;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$context:Landroid/content/Context;

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_snooze_length_ms"

    .line 87
    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "packageSnoozeLengthMs":I
    if-le v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    if-eq v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput v0, v1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mSnoozeLengthMs:I

    .line 93
    :cond_0
    return-void
.end method
