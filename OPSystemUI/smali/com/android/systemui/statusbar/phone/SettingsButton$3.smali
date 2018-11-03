.class Lcom/android/systemui/statusbar/phone/SettingsButton$3;
.super Ljava/lang/Object;
.source "SettingsButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SettingsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 170
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$3;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SettingsButton$3;->this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->startAccelSpin()V

    .line 174
    return-void
.end method
