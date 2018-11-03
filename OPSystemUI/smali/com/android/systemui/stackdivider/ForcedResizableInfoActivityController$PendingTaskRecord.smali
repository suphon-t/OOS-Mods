.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingTaskRecord"
.end annotation


# instance fields
.field reason:I

.field taskId:I

.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;II)V
    .locals 0
    .param p2, "taskId"    # I
    .param p3, "reason"    # I

    .line 71
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p2, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->taskId:I

    .line 73
    iput p3, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivityController$PendingTaskRecord;->reason:I

    .line 74
    return-void
.end method
