.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationHeaderUtil;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$5;->this$0:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentData"    # Ljava/lang/Object;
    .param p4, "childData"    # Ljava/lang/Object;

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 119
    instance-of v0, p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 120
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 122
    :cond_1
    return v1
.end method
