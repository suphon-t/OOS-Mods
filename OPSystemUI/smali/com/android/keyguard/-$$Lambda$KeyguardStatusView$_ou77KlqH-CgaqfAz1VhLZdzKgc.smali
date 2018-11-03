.class public final synthetic Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/keyguard/KeyguardStatusView;

.field private final synthetic f$1:Landroid/graphics/Paint$Style;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardStatusView;Landroid/graphics/Paint$Style;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;->f$0:Lcom/android/keyguard/KeyguardStatusView;

    iput-object p2, p0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;->f$1:Landroid/graphics/Paint$Style;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;->f$0:Lcom/android/keyguard/KeyguardStatusView;

    iget-object v1, p0, Lcom/android/keyguard/-$$Lambda$KeyguardStatusView$_ou77KlqH-CgaqfAz1VhLZdzKgc;->f$1:Landroid/graphics/Paint$Style;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->lambda$onLayoutChange$1(Lcom/android/keyguard/KeyguardStatusView;Landroid/graphics/Paint$Style;)V

    return-void
.end method
