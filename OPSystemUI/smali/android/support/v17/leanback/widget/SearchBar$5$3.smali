.class Landroid/support/v17/leanback/widget/SearchBar$5$3;
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

    .line 283
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$5$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$5$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$5;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$5$3;->this$1:Landroid/support/v17/leanback/widget/SearchBar$5;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar$5;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->requestFocus()Z

    .line 289
    return-void
.end method
