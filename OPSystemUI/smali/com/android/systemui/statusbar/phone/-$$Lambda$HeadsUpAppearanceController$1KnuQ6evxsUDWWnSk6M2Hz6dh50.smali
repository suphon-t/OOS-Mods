.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$1KnuQ6evxsUDWWnSk6M2Hz6dh50;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$updateHeadsUpHeaders$4(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method
