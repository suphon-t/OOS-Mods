.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->access$200(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    .line 91
    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "taskId"    # I
    .param p3, "reason"    # I

    .line 85
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->access$100(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;Ljava/lang/String;II)V

    .line 86
    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$2;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;->access$300(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;)V

    .line 96
    return-void
.end method
