.class Lcom/android/systemui/tuner/PluginFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/PluginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/PluginFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/PluginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/PluginFragment;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/tuner/PluginFragment$1;->this$0:Lcom/android/systemui/tuner/PluginFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/tuner/PluginFragment$1;->this$0:Lcom/android/systemui/tuner/PluginFragment;

    invoke-static {v0}, Lcom/android/systemui/tuner/PluginFragment;->access$000(Lcom/android/systemui/tuner/PluginFragment;)V

    .line 137
    return-void
.end method
