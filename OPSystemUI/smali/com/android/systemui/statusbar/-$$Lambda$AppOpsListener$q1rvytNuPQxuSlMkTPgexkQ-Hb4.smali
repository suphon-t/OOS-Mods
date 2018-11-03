.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/AppOpsListener;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/AppOpsListener;IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$0:Lcom/android/systemui/statusbar/AppOpsListener;

    iput p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$1:I

    iput p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$2:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$0:Lcom/android/systemui/statusbar/AppOpsListener;

    iget v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$1:I

    iget v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$2:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/-$$Lambda$AppOpsListener$q1rvytNuPQxuSlMkTPgexkQ-Hb4;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/AppOpsListener;->lambda$onOpActiveChanged$0(Lcom/android/systemui/statusbar/AppOpsListener;IILjava/lang/String;Z)V

    return-void
.end method
