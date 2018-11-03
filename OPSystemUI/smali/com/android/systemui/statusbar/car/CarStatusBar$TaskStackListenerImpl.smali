.class Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "CarStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/CarStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;Lcom/android/systemui/statusbar/car/CarStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/car/CarStatusBar$1;

    .line 450
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 3

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->access$400(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarFacetButtonController;

    move-result-object v0

    .line 455
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->taskChanged(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarStatusBar"

    const-string v2, "Getting StackInfo from activity manager failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
