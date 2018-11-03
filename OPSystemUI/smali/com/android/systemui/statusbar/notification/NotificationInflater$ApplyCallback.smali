.class abstract Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ApplyCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRemoteView()Landroid/widget/RemoteViews;
.end method

.method public abstract setResultView(Landroid/view/View;)V
.end method
