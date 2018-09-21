.class Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 105
    iput-object p1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .line 108
    if-eqz p3, :cond_0

    .line 109
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$000(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v2}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$200(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 110
    invoke-static {v3}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$100(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$002(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$000(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    invoke-static {v2}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$200(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment$1;->this$0:Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;

    .line 113
    invoke-static {v3}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$100(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;->access$002(Landroid/support/v14/preference/MultiSelectListPreferenceDialogFragment;Z)Z

    .line 115
    :goto_0
    return-void
.end method
