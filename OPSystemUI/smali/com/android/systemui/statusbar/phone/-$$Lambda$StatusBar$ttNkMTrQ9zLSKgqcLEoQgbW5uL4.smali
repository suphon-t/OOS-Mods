.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ttNkMTrQ9zLSKgqcLEoQgbW5uL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ttNkMTrQ9zLSKgqcLEoQgbW5uL4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final checkSave(Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$ttNkMTrQ9zLSKgqcLEoQgbW5uL4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$new$54(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
