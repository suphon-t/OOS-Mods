.class public Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 34
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->mView:Landroid/view/View;

    .line 37
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLAdapter$ViewHolder;->mView:Landroid/view/View;

    return-object v0
.end method
