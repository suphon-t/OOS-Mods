.class Landroid/support/v17/leanback/widget/SearchBar$2;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 216
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$2;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$2;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$2;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchBar;->setSearchQueryInternal(Ljava/lang/String;)V

    .line 220
    return-void
.end method
