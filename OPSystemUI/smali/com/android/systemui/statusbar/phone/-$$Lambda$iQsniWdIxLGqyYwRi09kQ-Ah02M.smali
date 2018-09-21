.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$iQsniWdIxLGqyYwRi09kQ-Ah02M;->f$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->removeView()V

    return-void
.end method
