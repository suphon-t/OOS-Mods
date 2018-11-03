.class Landroid/support/v17/leanback/widget/SearchBar$4;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/SearchEditText$OnKeyboardDismissListener;


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

    .line 244
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardDismiss()V
    .locals 2

    .line 247
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSearchBarListener:Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$4;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar$SearchBarListener;->onKeyboardDismiss(Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method
