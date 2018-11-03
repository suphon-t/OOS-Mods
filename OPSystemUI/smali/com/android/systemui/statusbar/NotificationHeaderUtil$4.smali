.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;


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
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyToChild(Landroid/view/View;ZI)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "shouldApply"    # Z
    .param p3, "originalColor"    # I

    .line 72
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 75
    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10600f3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 79
    .local v1, "grey":I
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    .end local v1    # "grey":I
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p3, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "apply"    # Z

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/view/NotificationHeaderView;

    .line 63
    .local v0, "header":Landroid/view/NotificationHeaderView;
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 65
    .local v1, "icon":Landroid/widget/ImageView;
    const v2, 0x102023e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    .local v2, "expand":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalIconColor()I

    move-result v3

    invoke-direct {p0, v1, p2, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;->applyToChild(Landroid/view/View;ZI)V

    .line 68
    invoke-virtual {v0}, Landroid/view/NotificationHeaderView;->getOriginalNotificationColor()I

    move-result v3

    invoke-direct {p0, v2, p2, v3}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$4;->applyToChild(Landroid/view/View;ZI)V

    .line 69
    return-void
.end method
