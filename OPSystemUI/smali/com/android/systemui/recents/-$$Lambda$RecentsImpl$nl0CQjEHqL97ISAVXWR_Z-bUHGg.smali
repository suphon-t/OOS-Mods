.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsImpl;

.field private final synthetic f$1:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$0:Lcom/android/systemui/recents/RecentsImpl;

    iput-object p2, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-boolean p3, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$2:Z

    iput-boolean p4, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$3:Z

    iput p5, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$0:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$1:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$2:Z

    iget-boolean v3, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$3:Z

    iget v4, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsImpl$nl0CQjEHqL97ISAVXWR_Z-bUHGg;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/RecentsImpl;->lambda$startRecentsActivityAndDismissKeyguardIfNeeded$3(Lcom/android/systemui/recents/RecentsImpl;Landroid/app/ActivityManager$RunningTaskInfo;ZZI)V

    return-void
.end method
