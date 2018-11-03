.class Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$2;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$2;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    .line 632
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 634
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-object v1, v1, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$finisher:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-boolean v2, v2, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$statusBarVisible:Z

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    iget-boolean v3, v3, Lcom/android/systemui/screenshot/GlobalScreenshot$2;->val$navBarVisible:Z

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$2$1;->val$rect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;ZZLandroid/graphics/Rect;)V

    .line 636
    return-void
.end method
