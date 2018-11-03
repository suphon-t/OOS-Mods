.class Lcom/android/systemui/stackdivider/DividerView$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/DividerView;

    .line 181
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 184
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    .line 186
    .local v0, "snapAlgorithm":Lcom/android/internal/policy/DividerSnapAlgorithm;
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v1

    const v2, 0x7f0a0028

    const v3, 0x7f0a0029

    const v4, 0x7f0a002a

    const v5, 0x7f0a002b

    const v6, 0x7f0a002c

    if-eqz v1, :cond_3

    .line 187
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 188
    invoke-static {v7}, Lcom/android/systemui/stackdivider/DividerView;->access$000(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f110049

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 189
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 191
    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerView;->access$100(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110048

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 193
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 196
    invoke-static {v5}, Lcom/android/systemui/stackdivider/DividerView;->access$200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110047

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 198
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 200
    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->access$300(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110046

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 202
    :cond_2
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 203
    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->access$400(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110040

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 202
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0

    .line 205
    :cond_3
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 206
    invoke-static {v7}, Lcom/android/systemui/stackdivider/DividerView;->access$500(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f110044

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 207
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 209
    invoke-static {v6}, Lcom/android/systemui/stackdivider/DividerView;->access$600(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f110043

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 211
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 214
    invoke-static {v5}, Lcom/android/systemui/stackdivider/DividerView;->access$700(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f110042

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 216
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 218
    invoke-static {v4}, Lcom/android/systemui/stackdivider/DividerView;->access$800(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f110041

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 220
    :cond_6
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    .line 221
    invoke-static {v3}, Lcom/android/systemui/stackdivider/DividerView;->access$900(Lcom/android/systemui/stackdivider/DividerView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f110045

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 220
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 223
    :goto_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 227
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getCurrentPosition()I

    move-result v0

    .line 228
    .local v0, "currentPosition":I
    const/4 v1, 0x0

    .line 229
    .local v1, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    packed-switch p2, :pswitch_data_0

    .line 246
    .end local v1    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .local v7, "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 231
    .end local v7    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v1    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 232
    goto :goto_0

    .line 234
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 238
    goto :goto_0

    .line 240
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    .line 241
    goto :goto_0

    .line 243
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->access$1000(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v1

    goto :goto_0

    .line 246
    .end local v1    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .restart local v7    # "nextTarget":Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    :goto_1
    if-eqz v7, :cond_0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const/4 v2, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v2}, Lcom/android/systemui/stackdivider/DividerView;->startDragging(ZZ)Z

    .line 248
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$2;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    const-wide/16 v4, 0xfa

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/stackdivider/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JLandroid/view/animation/Interpolator;)V

    .line 249
    return v8

    .line 251
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0028
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
