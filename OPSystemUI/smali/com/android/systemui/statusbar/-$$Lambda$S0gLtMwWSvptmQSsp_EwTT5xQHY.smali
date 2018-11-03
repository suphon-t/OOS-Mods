.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$S0gLtMwWSvptmQSsp_EwTT5xQHY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$S0gLtMwWSvptmQSsp_EwTT5xQHY;->f$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-void
.end method


# virtual methods
.method public final onSlideBack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$S0gLtMwWSvptmQSsp_EwTT5xQHY;->f$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleSlideBack()Z

    move-result v0

    return v0
.end method
