.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;->f$0:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onHideWallpaperTimeout()V

    return-void
.end method
