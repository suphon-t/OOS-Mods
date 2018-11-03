.class Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "OPDndCarModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/OPDndCarModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/OPDndCarModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/OPDndCarModeTile;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 3
    .param p1, "value"    # I

    .line 74
    const-string v0, "OPDndCarModeTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZEN_MODE_CAR  value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OPDndCarModeTile$2;->this$0:Lcom/android/systemui/qs/tiles/OPDndCarModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/OPDndCarModeTile;->refreshState()V

    .line 76
    return-void
.end method
