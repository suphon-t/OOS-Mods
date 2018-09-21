.class Lcom/android/systemui/qs/customize/QSCustomizer$3;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;->restoreInstanceState(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 510
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 515
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$3;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->showImmediately()V

    .line 517
    return-void
.end method
