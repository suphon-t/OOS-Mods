.class Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;
.super Ljava/lang/Object;
.source "OPThreekeyNavigationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 306
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$600(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$202(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$3;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    const-string v1, "op_threekey_navigation_completed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$700(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Ljava/lang/String;I)V

    .line 313
    return-void
.end method
