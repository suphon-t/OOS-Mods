.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;->f$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;->f$1:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$BWDn3Uq4m9m9zWWCd9Ws-560bx8;->f$2:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$onWorkChallengeChanged$41(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method
