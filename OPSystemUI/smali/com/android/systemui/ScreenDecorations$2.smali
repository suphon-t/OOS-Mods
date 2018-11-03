.class Lcom/android/systemui/ScreenDecorations$2;
.super Lcom/android/systemui/qs/SecureSetting;
.source "ScreenDecorations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->setupDecorations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;

.field final synthetic val$cutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ScreenDecorations;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;

    .line 221
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iput-object p5, p0, Lcom/android/systemui/ScreenDecorations$2;->val$cutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SecureSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .line 224
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    .line 225
    .local v0, "tint":I
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 226
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a021d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 227
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$000(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0361

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 228
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {v2}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object v2, v2, Lcom/android/systemui/ScreenDecorations;->mCutoutTop:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 233
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations$2;->val$cutoutBottom:Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->setColor(I)V

    .line 234
    return-void
.end method
