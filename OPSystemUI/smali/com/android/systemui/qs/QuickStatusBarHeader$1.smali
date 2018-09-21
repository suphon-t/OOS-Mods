.class Lcom/android/systemui/qs/QuickStatusBarHeader$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$002(Lcom/android/systemui/qs/QuickStatusBarHeader;I)I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$100(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    .line 138
    return-void
.end method
