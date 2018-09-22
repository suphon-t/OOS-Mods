.class public final synthetic Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field private final synthetic f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;->f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;->f$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/-$$Lambda$SmartSpaceController$9U6GvXj5mJZXQ9EeZasJ48wS8Es;->f$1:Lcom/google/android/systemui/smartspace/NewCardInfo;

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->lambda$onNewCard$2(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V

    return-void
.end method
