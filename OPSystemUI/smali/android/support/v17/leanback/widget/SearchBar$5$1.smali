.class Landroid/support/v17/leanback/widget/SearchBar$5$1;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar$5;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/SearchBar$5;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar$5;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v17/leanback/widget/SearchBar$5;

    .line 262
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$5$1;->this$1:Landroid/support/v17/leanback/widget/SearchBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 266
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$5$1;->this$1:Landroid/support/v17/leanback/widget/SearchBar$5;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->submitQuery()V

    .line 267
    return-void
.end method
