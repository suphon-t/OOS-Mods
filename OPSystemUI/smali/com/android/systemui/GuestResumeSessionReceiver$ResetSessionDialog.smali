.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 154
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 156
    const v0, 0x7f11029c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    const v0, 0x7f11029b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    nop

    .line 161
    const v0, 0x7f11029d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    nop

    .line 163
    const v0, 0x7f11029a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    .line 166
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 170
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/systemui/GuestResumeSessionReceiver;->access$000(Landroid/content/Context;I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->cancel()V

    .line 176
    :cond_1
    :goto_0
    return-void
.end method
