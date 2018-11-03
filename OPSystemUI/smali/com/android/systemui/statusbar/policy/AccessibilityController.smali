.class public Lcom/android/systemui/statusbar/policy/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;
    }
.end annotation


# instance fields
.field private mAccessibilityEnabled:Z

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 36
    const-string v0, "accessibility"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 38
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 39
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 40
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    .line 41
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    .line 42
    return-void
.end method

.method private fireChanged()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 69
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;->onStateChanged(ZZ)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;->onStateChanged(ZZ)V

    .line 61
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mAccessibilityEnabled:Z

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->fireChanged()V

    .line 78
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mTouchExplorationEnabled:Z

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->fireChanged()V

    .line 84
    return-void
.end method

.method public removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessibilityController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
