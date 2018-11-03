.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;


# direct methods
.method public synthetic constructor <init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;->f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;->f$0:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$ayp5xWywAkBOOSd-6MshVHM8Mms;->f$1:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$handleSet$4(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method
