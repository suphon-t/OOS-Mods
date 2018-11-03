.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityApplicator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$1;

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "apply"    # Z

    .line 372
    if-eqz p2, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 373
    return-void
.end method
