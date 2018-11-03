.class Lcom/android/systemui/statusbar/policy/SmartReplyView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflateReplyButton(Landroid/content/Context;Landroid/view/ViewGroup;ILjava/lang/CharSequence;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/SmartReplyView;

    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 232
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$1;->this$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 235
    return-void
.end method
