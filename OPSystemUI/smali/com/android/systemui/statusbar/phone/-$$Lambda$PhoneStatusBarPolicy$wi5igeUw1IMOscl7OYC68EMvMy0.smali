.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$wi5igeUw1IMOscl7OYC68EMvMy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$wi5igeUw1IMOscl7OYC68EMvMy0;->f$0:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$wi5igeUw1IMOscl7OYC68EMvMy0;->f$0:Landroid/app/NotificationManager;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateForegroundInstantApps$4(Landroid/app/NotificationManager;Landroid/util/Pair;)V

    return-void
.end method
