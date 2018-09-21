.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$LocationControllerImpl$H$xXVOboFsQOHoRY-EFzvZu-IOYh0;->f$0:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->lambda$locationSettingsChanged$1(ZLcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method
