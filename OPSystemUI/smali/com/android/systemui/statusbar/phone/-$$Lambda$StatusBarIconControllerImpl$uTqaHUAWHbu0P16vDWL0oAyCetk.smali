.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$uTqaHUAWHbu0P16vDWL0oAyCetk;->f$0:I

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$removeAllIconsForSlot$2(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method
