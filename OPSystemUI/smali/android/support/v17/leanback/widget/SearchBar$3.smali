.class Landroid/support/v17/leanback/widget/SearchBar$3;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field final synthetic val$mOnTextChangedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .line 222
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .line 241
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 225
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 230
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$3;->val$mOnTextChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method
