.class public Lcom/android/systemui/statusbar/notification/AboveShelfObserver;
.super Ljava/lang/Object;
.source "AboveShelfObserver.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/AboveShelfChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;
    }
.end annotation


# instance fields
.field private mHasViewsAboveShelf:Z

.field private final mHostLayout:Landroid/view/ViewGroup;

.field private mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostLayout"    # Landroid/view/ViewGroup;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    .line 36
    return-void
.end method


# virtual methods
.method hasViewsAboveShelf()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    return v0
.end method

.method public onAboveShelfStateChanged(Z)V
    .locals 5
    .param p1, "aboveShelf"    # Z

    .line 44
    move v0, p1

    .line 45
    .local v0, "hasViewsAboveShelf":Z
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 47
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 48
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHostLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 50
    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const/4 v0, 0x1

    .line 52
    goto :goto_1

    .line 47
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    if-eq v1, v0, :cond_2

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mHasViewsAboveShelf:Z

    .line 59
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;->onHasViewsAboveShelfChanged(Z)V

    .line 63
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    .line 39
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AboveShelfObserver;->mListener:Lcom/android/systemui/statusbar/notification/AboveShelfObserver$HasViewAboveShelfChangedListener;

    .line 40
    return-void
.end method
