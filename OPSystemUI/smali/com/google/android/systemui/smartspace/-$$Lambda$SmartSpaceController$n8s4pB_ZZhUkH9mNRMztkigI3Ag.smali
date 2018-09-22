.class public final synthetic Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field private final synthetic f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

.field private final synthetic f$2:Lcom/google/android/systemui/smartspace/SmartSpaceCard;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;->f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;->f$2:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;->f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$n8s4pB_ZZhUkH9mNRMztkigI3Ag;->f$2:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    invoke-static {v0, v1, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->lambda$onNewCard$1(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;Lcom/google/android/systemui/smartspace/SmartSpaceCard;)V

    return-void
.end method
