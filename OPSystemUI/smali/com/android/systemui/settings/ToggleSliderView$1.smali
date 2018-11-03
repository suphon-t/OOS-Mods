.class Lcom/android/systemui/settings/ToggleSliderView$1;
.super Ljava/lang/Object;
.source "ToggleSliderView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSliderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/ToggleSliderView;

    .line 150
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "toggle"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 153
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$100(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    .line 157
    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$200(Lcom/android/systemui/settings/ToggleSliderView;)Z

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$000(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v5

    const/4 v6, 0x0

    .line 156
    move v4, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView$1;->this$0:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$300(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSliderView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/settings/ToggleSliderView;->access$400(Lcom/android/systemui/settings/ToggleSliderView;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 163
    :cond_1
    return-void
.end method
