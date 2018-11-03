.class Lcom/android/systemui/egg/MLand$Pop$1;
.super Landroid/view/ViewOutlineProvider;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/MLand$Pop;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/egg/MLand$Pop;

.field final synthetic val$this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/MLand$Pop;Lcom/android/systemui/egg/MLand;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/egg/MLand$Pop;

    .line 1254
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    iput-object p2, p0, Lcom/android/systemui/egg/MLand$Pop$1;->val$this$0:Lcom/android/systemui/egg/MLand;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v0}, Lcom/android/systemui/egg/MLand$Pop;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 1258
    .local v0, "pad":I
    iget-object v1, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v1}, Lcom/android/systemui/egg/MLand$Pop;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/egg/MLand$Pop$1;->this$1:Lcom/android/systemui/egg/MLand$Pop;

    invoke-virtual {v2}, Lcom/android/systemui/egg/MLand$Pop;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p2, v0, v0, v1, v2}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 1259
    return-void
.end method
