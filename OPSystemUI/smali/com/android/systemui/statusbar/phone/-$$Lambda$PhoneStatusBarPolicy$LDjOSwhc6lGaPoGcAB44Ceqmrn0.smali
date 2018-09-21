.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final synthetic f$1:Landroid/util/ArraySet;

.field private final synthetic f$2:Landroid/app/NotificationManager;

.field private final synthetic f$3:Landroid/content/pm/IPackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$1:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$2:Landroid/app/NotificationManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$3:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$1:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$2:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$LDjOSwhc6lGaPoGcAB44Ceqmrn0;->f$3:Landroid/content/pm/IPackageManager;

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateForegroundInstantApps$5(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    return-void
.end method
