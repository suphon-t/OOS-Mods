.class Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSliceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardSliceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    .line 102
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    :cond_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->access$000(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    new-instance v3, Lcom/android/systemui/keyguard/-$$Lambda$UyKQdSvY5FC_Xuudb07cmVSuhU4;

    invoke-direct {v3, v2}, Lcom/android/systemui/keyguard/-$$Lambda$UyKQdSvY5FC_Xuudb07cmVSuhU4;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardSliceProvider;->access$000(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSliceProvider$1;->this$0:Lcom/android/systemui/keyguard/KeyguardSliceProvider;

    new-instance v3, Lcom/android/systemui/keyguard/-$$Lambda$iHhuB2gJvIMUcE0UtET88pejsrA;

    invoke-direct {v3, v2}, Lcom/android/systemui/keyguard/-$$Lambda$iHhuB2gJvIMUcE0UtET88pejsrA;-><init>(Lcom/android/systemui/keyguard/KeyguardSliceProvider;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_3
    return-void
.end method
