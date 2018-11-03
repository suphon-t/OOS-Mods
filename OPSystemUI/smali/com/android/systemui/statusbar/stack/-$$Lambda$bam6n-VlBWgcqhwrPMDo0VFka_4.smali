.class public final synthetic Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;->f$0:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$bam6n-VlBWgcqhwrPMDo0VFka_4;->f$0:Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationRoundnessManager;->setExpanded(FF)V

    return-void
.end method
