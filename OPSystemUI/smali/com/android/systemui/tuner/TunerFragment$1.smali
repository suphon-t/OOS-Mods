.class Lcom/android/systemui/tuner/TunerFragment$1;
.super Ljava/lang/Object;
.source "TunerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/tuner/TunerFragment;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$1;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerFragment$1;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerFragment$1;->this$0:Lcom/android/systemui/tuner/TunerFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 130
    :cond_0
    return-void
.end method
