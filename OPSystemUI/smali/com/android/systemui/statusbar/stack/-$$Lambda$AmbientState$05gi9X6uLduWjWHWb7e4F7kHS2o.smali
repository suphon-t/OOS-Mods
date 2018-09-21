.class public final synthetic Lcom/android/systemui/statusbar/stack/-$$Lambda$AmbientState$05gi9X6uLduWjWHWb7e4F7kHS2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$AmbientState$05gi9X6uLduWjWHWb7e4F7kHS2o;->f$0:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/-$$Lambda$AmbientState$05gi9X6uLduWjWHWb7e4F7kHS2o;->f$0:Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->lambda$isPulsing$0(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result p1

    return p1
.end method
