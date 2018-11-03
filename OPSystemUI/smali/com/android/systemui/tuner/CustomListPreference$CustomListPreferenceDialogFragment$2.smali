.class Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "CustomListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 135
    iget-object v0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {v0, p2}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/tuner/CustomListPreference;->isAutoClosePreference()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->onItemConfirmed()V

    .line 139
    :cond_0
    return-void
.end method
