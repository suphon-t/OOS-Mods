.class public Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "UserGridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserAdapterViewHolder"
.end annotation


# instance fields
.field public mUserAvatarImageView:Landroid/widget/ImageView;

.field public mUserNameTextView:Landroid/widget/TextView;

.field public mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;
    .param p2, "view"    # Landroid/view/View;

    .line 314
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->this$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    .line 315
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 316
    iput-object p2, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mView:Landroid/view/View;

    .line 317
    const v0, 0x7f0a0447

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mUserAvatarImageView:Landroid/widget/ImageView;

    .line 318
    const v0, 0x7f0a0449

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;->mUserNameTextView:Landroid/widget/TextView;

    .line 319
    return-void
.end method
