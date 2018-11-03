.class public Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;
.super Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;
.source "GestureRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagRecord"
.end annotation


# instance fields
.field public info:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/GestureRecorder$Gesture;
    .param p2, "when"    # J
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "info"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->this$1:Lcom/android/systemui/statusbar/GestureRecorder$Gesture;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$Record;-><init>(Lcom/android/systemui/statusbar/GestureRecorder$Gesture;)V

    .line 81
    iput-wide p2, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->time:J

    .line 82
    iput-object p4, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->tag:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/android/systemui/statusbar/GestureRecorder$Gesture$TagRecord;->info:Ljava/lang/String;

    .line 84
    return-void
.end method
