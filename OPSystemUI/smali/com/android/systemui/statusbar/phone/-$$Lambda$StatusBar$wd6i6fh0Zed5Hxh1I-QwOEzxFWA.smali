.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$wd6i6fh0Zed5Hxh1I-QwOEzxFWA;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$postStartActivityDismissingKeyguard$35(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Intent;)V

    return-void
.end method
