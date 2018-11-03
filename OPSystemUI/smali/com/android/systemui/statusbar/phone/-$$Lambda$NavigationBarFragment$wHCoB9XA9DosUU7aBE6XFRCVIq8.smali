.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$wHCoB9XA9DosUU7aBE6XFRCVIq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$wHCoB9XA9DosUU7aBE6XFRCVIq8;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$wHCoB9XA9DosUU7aBE6XFRCVIq8;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->lambda$disableAnimationsDuringHide$2(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    return-void
.end method
