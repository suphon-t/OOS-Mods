.class final Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;
.super Landroid/view/View$AccessibilityDelegate;
.source "VolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Accessibility"
.end annotation


# instance fields
.field private mFeedbackEnabled:Z

.field private final mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 1626
    new-instance p1, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$Accessibility$kxl9eO7EXO-qLbFSXepX3MznHcY;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/-$$Lambda$VolumeDialogImpl$Accessibility$kxl9eO7EXO-qLbFSXepX3MznHcY;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Lcom/android/systemui/volume/VolumeDialogImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl;
    .param p2, "x1"    # Lcom/android/systemui/volume/VolumeDialogImpl$1;

    .line 1571
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 1571
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    .line 1571
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    return v0
.end method

.method private computeFeedbackEnabled()Z
    .locals 5

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    .line 1617
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 1618
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1619
    .local v2, "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    .line 1620
    const/4 v1, 0x1

    return v1

    .line 1622
    .end local v2    # "asi":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    goto :goto_0

    .line 1623
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .param p1, "enabled"    # Landroid/view/accessibility/AccessibilityManager;

    .line 1627
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    return-void
.end method

.method private updateFeedbackEnabled()V
    .locals 1

    .line 1611
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->computeFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mFeedbackEnabled:Z

    .line 1612
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1593
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1594
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1599
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->composeWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 2

    .line 1575
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility$1;-><init>(Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1587
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$3400(Lcom/android/systemui/volume/VolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1588
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->access$5000(Lcom/android/systemui/volume/VolumeDialogImpl;)Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->mListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 1589
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->updateFeedbackEnabled()V

    .line 1590
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1606
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    .line 1607
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
