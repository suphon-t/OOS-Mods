.class public Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
.super Ljava/lang/Object;
.source "TaskStackLayoutAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VisibilityReport"
.end annotation


# instance fields
.field public numVisibleTasks:I

.field public numVisibleThumbnails:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "tasks"    # I
    .param p2, "thumbnails"    # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    .line 162
    iput p2, p0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    .line 163
    return-void
.end method
