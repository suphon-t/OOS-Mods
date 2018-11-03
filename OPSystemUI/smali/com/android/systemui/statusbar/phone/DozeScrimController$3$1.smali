.class Lcom/android/systemui/statusbar/phone/DozeScrimController$3$1;
.super Ljava/lang/Object;
.source "DozeScrimController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    .line 179
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3$1;->this$1:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayBlanked()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3$1;->this$1:Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    .line 183
    return-void
.end method
