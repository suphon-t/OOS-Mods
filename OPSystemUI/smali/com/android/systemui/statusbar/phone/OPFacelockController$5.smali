.class Lcom/android/systemui/statusbar/phone/OPFacelockController$5;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;->handleStopFacelock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

.field final synthetic val$source:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 834
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->val$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$5;->val$source:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$1700(Lcom/android/systemui/statusbar/phone/OPFacelockController;Ljava/lang/String;)V

    .line 838
    return-void
.end method
