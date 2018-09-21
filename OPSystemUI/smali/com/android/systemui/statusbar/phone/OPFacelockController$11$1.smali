.class Lcom/android/systemui/statusbar/phone/OPFacelockController$11$1;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->onEndRecognize(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/OPFacelockController$11;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    .line 1127
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11$1;->this$1:Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11$1;->this$1:Lcom/android/systemui/statusbar/phone/OPFacelockController$11;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/OPFacelockController$11;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->access$700(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 1131
    return-void
.end method
