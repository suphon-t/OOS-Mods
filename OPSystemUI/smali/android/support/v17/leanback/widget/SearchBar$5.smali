.class Landroid/support/v17/leanback/widget/SearchBar$5;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->onFinishInflate()V
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

    .line 253
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "action"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .line 257
    const/4 v0, 0x1

    .line 258
    .local v0, "handled":Z
    const-wide/16 v1, 0x1f4

    const/4 v3, 0x3

    if-eq v3, p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v3, :cond_1

    .line 261
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 262
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$5$1;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$5$1;-><init>(Landroid/support/v17/leanback/widget/SearchBar$5;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 270
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p2, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v3, :cond_2

    .line 272
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 273
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$5$2;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$5$2;-><init>(Landroid/support/v17/leanback/widget/SearchBar$5;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 280
    :cond_2
    const/4 v3, 0x2

    if-ne v3, p2, :cond_3

    .line 282
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 283
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    new-instance v4, Landroid/support/v17/leanback/widget/SearchBar$5$3;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/widget/SearchBar$5$3;-><init>(Landroid/support/v17/leanback/widget/SearchBar$5;)V

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 292
    :cond_3
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0
.end method
