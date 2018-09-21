.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;
.super Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;-><init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentData"    # Ljava/lang/Object;
    .param p4, "childData"    # Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;->hasSameIcon(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p3, p4}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$2;->hasSameColor(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0
.end method
