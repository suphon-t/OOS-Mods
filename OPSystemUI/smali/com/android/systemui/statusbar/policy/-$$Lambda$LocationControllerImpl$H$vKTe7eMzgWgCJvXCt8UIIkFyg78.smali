.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;->f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$vKTe7eMzgWgCJvXCt8UIIkFyg78;->f$0:Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->lambda$locationActiveChanged$0(Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method
