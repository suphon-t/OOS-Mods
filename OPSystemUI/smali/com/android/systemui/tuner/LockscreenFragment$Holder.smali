.class public Lcom/android/systemui/tuner/LockscreenFragment$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# instance fields
.field public final expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field public final icon:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 161
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 162
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->icon:Landroid/widget/ImageView;

    .line 163
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->title:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0a0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    .line 165
    return-void
.end method
