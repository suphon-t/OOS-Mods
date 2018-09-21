.class public final synthetic Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/HardwareUiLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;->f$0:Lcom/android/systemui/HardwareUiLayout;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    move-object v0, p0

    iget-object v0, v0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$iXisPfYv_BRDXTMSPDe1D5AA0Wo;->f$0:Lcom/android/systemui/HardwareUiLayout;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/systemui/HardwareUiLayout;->lambda$onMeasure$0(Lcom/android/systemui/HardwareUiLayout;Landroid/view/View;IIIIIIII)V

    return-void
.end method
