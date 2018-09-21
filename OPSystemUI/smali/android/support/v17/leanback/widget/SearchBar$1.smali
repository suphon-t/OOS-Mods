.class Landroid/support/v17/leanback/widget/SearchBar$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 204
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$1;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 208
    if-eqz p2, :cond_0

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$1;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->showNativeKeyboard()V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$1;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->hideNativeKeyboard()V

    .line 213
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$1;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/SearchBar;->updateUi(Z)V

    .line 214
    return-void
.end method
