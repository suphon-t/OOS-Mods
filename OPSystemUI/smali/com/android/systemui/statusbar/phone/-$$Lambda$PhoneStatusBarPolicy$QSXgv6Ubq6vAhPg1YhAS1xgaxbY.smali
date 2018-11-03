.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$1:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$QSXgv6Ubq6vAhPg1YhAS1xgaxbY;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$updateBluetooth$2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;ILjava/lang/String;Z)V

    return-void
.end method
