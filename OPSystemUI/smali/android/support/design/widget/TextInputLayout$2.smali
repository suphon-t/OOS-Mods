.class Landroid/support/design/widget/TextInputLayout$2;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->updatePasswordToggleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/design/widget/TextInputLayout;

    .line 1600
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$2;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1603
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$2;->this$0:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/design/widget/TextInputLayout;->access$100(Landroid/support/design/widget/TextInputLayout;Z)V

    .line 1604
    return-void
.end method
