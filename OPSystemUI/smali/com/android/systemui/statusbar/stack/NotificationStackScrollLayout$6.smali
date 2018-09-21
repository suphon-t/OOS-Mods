.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/ExpandableView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 354
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 3
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "otherView"    # Lcom/android/systemui/statusbar/ExpandableView;

    .line 357
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 358
    .local v0, "endY":F
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 359
    .local v1, "otherEndY":F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 360
    const/4 v2, -0x1

    return v2

    .line 361
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 362
    const/4 v2, 0x1

    return v2

    .line 365
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 354
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableView;

    check-cast p2, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;->compare(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result p1

    return p1
.end method
