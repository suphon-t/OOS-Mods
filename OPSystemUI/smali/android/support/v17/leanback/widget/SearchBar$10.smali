.class Landroid/support/v17/leanback/widget/SearchBar$10;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .line 797
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iput p2, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 800
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 801
    .local v0, "sound":I
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v0

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 803
    return-void
.end method
