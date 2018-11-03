.class Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;
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

    .line 298
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 301
    invoke-static {}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClickNextButton"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$2;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$400(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    .line 303
    return-void
.end method
