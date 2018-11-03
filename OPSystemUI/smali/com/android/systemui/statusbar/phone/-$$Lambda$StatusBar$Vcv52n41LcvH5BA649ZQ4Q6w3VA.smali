.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$Vcv52n41LcvH5BA649ZQ4Q6w3VA;->f$1:Z

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$maybeEscalateHeadsUp$21(Lcom/android/systemui/statusbar/phone/StatusBar;ZLcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method
