.class Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->onDisplayChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

.field final synthetic val$displayId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    .line 588
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;->val$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 591
    iget v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;->val$displayId:I

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v1}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView$1;->this$0:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->access$400(Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V

    .line 594
    :cond_0
    return-void
.end method
