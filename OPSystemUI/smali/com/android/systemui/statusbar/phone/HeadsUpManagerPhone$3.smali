.class Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;
.super Ljava/lang/Object;
.source "HeadsUpManagerPhone.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->waitForStatusBarLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 396
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$200(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$100(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$302(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Z)Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$3;->this$0:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->access$000(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 406
    :cond_0
    return-void
.end method
