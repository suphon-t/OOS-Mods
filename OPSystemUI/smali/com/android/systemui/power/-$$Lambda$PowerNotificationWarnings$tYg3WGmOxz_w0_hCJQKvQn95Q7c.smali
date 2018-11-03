.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$tYg3WGmOxz_w0_hCJQKvQn95Q7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$tYg3WGmOxz_w0_hCJQKvQn95Q7c;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$PowerNotificationWarnings$tYg3WGmOxz_w0_hCJQKvQn95Q7c;->f$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->lambda$showAutoSaverEnabledConfirmation$6(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/content/DialogInterface;)V

    return-void
.end method
