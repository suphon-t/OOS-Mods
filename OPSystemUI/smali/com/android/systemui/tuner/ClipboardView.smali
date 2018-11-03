.class public Lcom/android/systemui/tuner/ClipboardView;
.super Landroid/widget/ImageView;
.source "ClipboardView.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field private final mClipboardManager:Landroid/content/ClipboardManager;

.field private mCurrentClip:Landroid/content/ClipData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-class v0, Landroid/content/ClipboardManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    .line 38
    return-void
.end method

.method private setBackgroundDragTarget(Z)V
    .locals 1
    .param p1, "isTarget"    # Z

    .line 77
    if-eqz p1, :cond_0

    const v0, 0x4dffffff    # 5.3687088E8f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundColor(I)V

    .line 78
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startListening()V

    .line 44
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->stopListening()V

    .line 50
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 62
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 64
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    .line 65
    goto :goto_0

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 70
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setBackgroundDragTarget(Z)V

    .line 73
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPrimaryClipChanged()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    .line 98
    const v0, 0x7f0801a2

    goto :goto_0

    :cond_0
    const v0, 0x7f0801a1

    .line 97
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ClipboardView;->setImageResource(I)V

    .line 99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->startPocketDrag()V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public startListening()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/tuner/ClipboardView;->onPrimaryClipChanged()V

    .line 88
    return-void
.end method

.method public startPocketDrag()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mCurrentClip:Landroid/content/ClipData;

    new-instance v1, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v1, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/tuner/ClipboardView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 83
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/tuner/ClipboardView;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p0}, Landroid/content/ClipboardManager;->removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 92
    return-void
.end method
