.class Lcom/android/keyguard/EmergencyCarrierArea$1;
.super Ljava/lang/Object;
.source "EmergencyCarrierArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyCarrierArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyCarrierArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyCarrierArea;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/EmergencyCarrierArea;

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 51
    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-static {v0}, Lcom/android/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/CarrierText;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 52
    nop

    .line 57
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
