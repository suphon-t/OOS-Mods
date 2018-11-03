.class Lcom/android/systemui/qs/tiles/GameModeTile$2;
.super Ljava/lang/Object;
.source "GameModeTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/GameModeTile;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/GameModeTile;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/GameModeTile;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/GameModeTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/GameModeTile;->access$100(Lcom/android/systemui/qs/tiles/GameModeTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_status_manual"

    iget-boolean v2, p0, Lcom/android/systemui/qs/tiles/GameModeTile$2;->val$enabled:Z

    if-eqz v2, :cond_0

    const-string v2, "force-on"

    goto :goto_0

    :cond_0
    const-string v2, "force-off"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 90
    return-void
.end method
