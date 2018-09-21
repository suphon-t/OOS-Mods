.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$BhXvHb7L6APT_cYYehmMxR3OZv4;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->lambda$transitionFrom$5(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
