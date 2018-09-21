.class Landroid/support/design/internal/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/internal/BottomNavigationMenuView;

    .line 108
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 111
    move-object v0, p1

    check-cast v0, Landroid/support/design/internal/BottomNavigationItemView;

    .line 112
    .local v0, "itemView":Landroid/support/design/internal/BottomNavigationItemView;
    invoke-virtual {v0}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 113
    .local v1, "item":Landroid/view/MenuItem;
    iget-object v2, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-static {v2}, Landroid/support/design/internal/BottomNavigationMenuView;->access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-static {v3}, Landroid/support/design/internal/BottomNavigationMenuView;->access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 116
    :cond_0
    return-void
.end method
