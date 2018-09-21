.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$xhbxghYggVvH-Fewrs8cwC_bnGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$xhbxghYggVvH-Fewrs8cwC_bnGY;->f$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$xhbxghYggVvH-Fewrs8cwC_bnGY;->f$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method
