.class public Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;
.super Landroid/text/style/ClickableSpan;
.source "QSSecurityFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VpnSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 495
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 506
    instance-of v0, p1, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 511
    const v0, 0x12b9b099

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 500
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$1300(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 501
    return-void
.end method
