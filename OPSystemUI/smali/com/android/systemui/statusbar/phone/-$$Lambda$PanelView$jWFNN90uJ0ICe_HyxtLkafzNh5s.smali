.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PanelView;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;->f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;->f$0:Lcom/android/systemui/statusbar/phone/PanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PanelView$jWFNN90uJ0ICe_HyxtLkafzNh5s;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->lambda$startFacelockFailAnimation$3(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/View;)V

    return-void
.end method
