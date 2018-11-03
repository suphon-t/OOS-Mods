.class abstract Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IconComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$IconComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "parentData"    # Ljava/lang/Object;
    .param p4, "childData"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSameColor(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "parentData"    # Ljava/lang/Object;
    .param p2, "childData"    # Ljava/lang/Object;

    .line 353
    move-object v0, p1

    check-cast v0, Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 354
    .local v0, "parentColor":I
    move-object v1, p2

    check-cast v1, Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    .line 355
    .local v1, "childColor":I
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected hasSameIcon(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "parentData"    # Ljava/lang/Object;
    .param p2, "childData"    # Ljava/lang/Object;

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 345
    .local v0, "parentIcon":Landroid/graphics/drawable/Icon;
    move-object v1, p2

    check-cast v1, Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 346
    .local v1, "childIcon":Landroid/graphics/drawable/Icon;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    return v2
.end method

.method public isEmpty(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 360
    const/4 v0, 0x0

    return v0
.end method
