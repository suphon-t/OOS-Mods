.class Lcom/android/settingslib/notification/ZenDurationDialog$3;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/notification/ZenDurationDialog;->setupUi(Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

.field final synthetic val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;


# direct methods
.method constructor <init>(Lcom/android/settingslib/notification/ZenDurationDialog;Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/notification/ZenDurationDialog;

    .line 218
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$3;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iput-object p2, p0, Lcom/android/settingslib/notification/ZenDurationDialog$3;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$3;->val$tag:Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;

    iget-object v0, v0, Lcom/android/settingslib/notification/ZenDurationDialog$ConditionTag;->rb:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 222
    return-void
.end method
