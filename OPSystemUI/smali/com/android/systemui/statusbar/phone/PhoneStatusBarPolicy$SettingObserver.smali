.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 1193
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1194
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1198
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$SettingObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 1200
    return-void
.end method
