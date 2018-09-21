.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$IedzBslpRTF95Z-E8YfkBh77Pu0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$IedzBslpRTF95Z-E8YfkBh77Pu0;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$StatusBarIconView$IedzBslpRTF95Z-E8YfkBh77Pu0;->f$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->lambda$setDark$1(Lcom/android/systemui/statusbar/StatusBarIconView;Ljava/lang/Float;)V

    return-void
.end method
