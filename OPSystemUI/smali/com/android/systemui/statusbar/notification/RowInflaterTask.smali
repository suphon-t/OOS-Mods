.class public Lcom/android/systemui/statusbar/notification/RowInflaterTask;
.super Ljava/lang/Object;
.source "RowInflaterTask.java"

# interfaces
.implements Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;
.implements Lcom/android/systemui/statusbar/InflationTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mInflateOrigin:Ljava/lang/Throwable;

.field private mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mCancelled:Z

    .line 61
    return-void
.end method

.method public inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p4, "listener"    # Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    .line 49
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "inflate requested here"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    .line 51
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    .line 52
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "inflater":Landroid/support/v4/view/AsyncLayoutInflater;
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 54
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    .line 55
    const v1, 0x7f0d01cd

    invoke-virtual {v0, v1, p2, p0}, Landroid/support/v4/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    .line 56
    return-void
.end method

.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resid"    # I
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mCancelled:Z

    if-nez v0, :cond_1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mListener:Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/RowInflaterTask$RowInflationFinishedListener;->onInflationFinished(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in inflation finished listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    const-string v3, "RowInflaterTask"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/RowInflaterTask;->mInflateOrigin:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    throw v0

    .line 77
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method
