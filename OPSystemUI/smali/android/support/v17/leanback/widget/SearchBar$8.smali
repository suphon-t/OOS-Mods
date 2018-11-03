.class Landroid/support/v17/leanback/widget/SearchBar$8;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->showNativeKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .line 510
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 513
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchEditText;->requestFocusFromTouch()Z

    .line 514
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v5, v5, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 516
    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/SearchEditText;->getWidth()I

    move-result v5

    int-to-float v6, v5

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v5, v5, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/SearchEditText;->getHeight()I

    move-result v5

    int-to-float v7, v5

    .line 514
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 517
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v5, v5, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    .line 519
    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/SearchEditText;->getWidth()I

    move-result v5

    int-to-float v6, v5

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SearchBar$8;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v5, v5, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/SearchEditText;->getHeight()I

    move-result v5

    int-to-float v7, v5

    .line 517
    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchEditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 520
    return-void
.end method
