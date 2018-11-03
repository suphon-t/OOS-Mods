.class Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LaunchHomeRunnable"
.end annotation


# instance fields
.field mLaunchIntent:Landroid/content/Intent;

.field mOpts:Landroid/app/ActivityOptions;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "opts"    # Landroid/app/ActivityOptions;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    .line 171
    iput-object p3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 172
    return-void
.end method

.method public static synthetic lambda$run$0(Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    .line 179
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-nez v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v2, 0x7f0100e3

    const v3, 0x7f0100e4

    invoke-static {v1, v2, v3}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 184
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsActivity;->access$000(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$LaunchHomeRunnable$K3jCoKVe41-EkTmSKH7i98xFt8k;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/-$$Lambda$RecentsActivity$LaunchHomeRunnable$K3jCoKVe41-EkTmSKH7i98xFt8k;-><init>(Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecentsActivity"

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v3, 0x7f110543

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Home"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
