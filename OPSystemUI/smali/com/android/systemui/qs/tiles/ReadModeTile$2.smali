.class Lcom/android/systemui/qs/tiles/ReadModeTile$2;
.super Lcom/android/systemui/qs/SecureSetting;
.source "ReadModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ReadModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ReadModeTile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->refreshState()V

    .line 60
    return-void
.end method
