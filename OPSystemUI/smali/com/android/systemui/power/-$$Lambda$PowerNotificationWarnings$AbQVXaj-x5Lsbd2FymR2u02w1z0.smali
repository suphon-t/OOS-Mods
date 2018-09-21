.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-object p2, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$AbQVXaj-x5Lsbd2FymR2u02w1z0;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$showAutoSaverEnabledConfirmation$5(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method
