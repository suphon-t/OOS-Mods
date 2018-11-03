.class public Lcom/android/systemui/statusbar/policy/RemoteInputView;
.super Landroid/widget/LinearLayout;
.source "RemoteInputView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
    }
.end annotation


# static fields
.field public static final VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private mController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mOnVisibilityChangedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInput:Landroid/app/RemoteInput;

.field private mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mRemoteInputs:[Landroid/app/RemoteInput;

.field private mRemoved:Z

.field private mResetting:Z

.field private mRevealCx:I

.field private mRevealCy:I

.field private mRevealR:I

.field private mSendButton:Landroid/widget/ImageButton;

.field public final mToken:Ljava/lang/Object;

.field private mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    .line 101
    const-class v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->sendRemoteInput()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/RemoteInputView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onDefocus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/RemoteInputView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 69
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    return v0
.end method

.method public static inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/RemoteInputController;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p3, "controller"    # Lcom/android/systemui/statusbar/RemoteInputController;

    .line 186
    nop

    .line 187
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 188
    .local v0, "v":Lcom/android/systemui/statusbar/policy/RemoteInputView;
    iput-object p3, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 189
    iput-object p2, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 190
    sget-object v1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setTag(Ljava/lang/Object;)V

    .line 192
    return-object v0
.end method

.method private onDefocus(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 216
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 217
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    if-lez v0, :cond_0

    .line 218
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 220
    .local v0, "reveal":Landroid/animation/Animator;
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 222
    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$2;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 232
    .end local v0    # "reveal":Landroid/animation/Animator;
    goto :goto_0

    .line 233
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->setRemoteInputActive(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContext:Landroid/content/Context;

    const/16 v1, 0x190

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 243
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method private reset()V
    .locals 4

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputTextWhenReset:Ljava/lang/CharSequence;

    .line 324
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 330
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->onDefocus(Z)V

    .line 332
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    .line 333
    return-void
.end method

.method private sendRemoteInput()V
    .locals 6

    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "results":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 144
    .local v1, "fillInIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v2, v1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 146
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setEnabled(Z)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->lastRemoteInputSent:J

    .line 153
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/RemoteInputController;->addSpinning(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    .line 155
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/RemoteInputController;->remoteInputSent(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setHasSentReply()V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 165
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 166
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 164
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ShortcutManager;->onApplicationActive(Ljava/lang/String;I)V

    .line 168
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 169
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 168
    const/16 v5, 0x18e

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "RemoteInput"

    const-string v4, "Unable to send remote input result"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContext:Landroid/content/Context;

    const/16 v4, 0x18f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 175
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 174
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 177
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private updateSendButton()V
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 348
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 359
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 351
    return-void
.end method

.method public close()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$400(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Z)V

    .line 363
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 3

    .line 455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->removeDetachedView(Landroid/view/View;Z)V

    .line 460
    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchFinishTemporaryDetach()V

    .line 461
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    .line 447
    invoke-super {p0}, Landroid/widget/LinearLayout;->dispatchStartTemporaryDetach()V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->detachViewFromParent(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public focus()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 289
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 288
    const/16 v2, 0x18d

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->mShowImeOnInputConnection:Z

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->remoteInputText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setSelection(I)V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->addRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->setRemoteInputActive(Z)V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->updateSendButton()V

    .line 305
    return-void
.end method

.method public focusAnimated()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    int-to-float v3, v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 280
    .local v0, "animator":Landroid/animation/Animator;
    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 281
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 284
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 285
    return-void
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSending()Z
    .locals 3

    .line 480
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 248
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->requestFocus()Z

    .line 254
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->sendRemoteInput()V

    .line 200
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 258
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChangingPosition()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/NotificationData$Entry;Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeSpinning(Ljava/lang/String;Ljava/lang/Object;)V

    .line 264
    return-void

    .line 260
    :cond_1
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 108
    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 110
    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mSendButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$1;-><init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setInnerFocusable(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->access$202(Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;Lcom/android/systemui/statusbar/policy/RemoteInputView;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 138
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/RemoteInputController;->requestDisallowLongPressAndDismiss()V

    .line 370
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onNotificationUpdateOrReset()V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 310
    .local v0, "sending":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->reset()V

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v2, :cond_2

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setRemoteInputVisible(Z)V

    .line 318
    :cond_2
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 337
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mResetting:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    if-ne p1, v0, :cond_0

    .line 341
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 354
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 204
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 473
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 474
    if-ne p1, p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 477
    :cond_1
    return-void
.end method

.method public requestScrollTo()Z
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mController:Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->lockScrollTo(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public setOnVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 468
    .local p1, "visibilityChangedListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mOnVisibilityChangedListener:Ljava/util/function/Consumer;

    .line 469
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 267
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 268
    return-void
.end method

.method public setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V
    .locals 2
    .param p1, "remoteInputs"    # [Landroid/app/RemoteInput;
    .param p2, "remoteInput"    # Landroid/app/RemoteInput;

    .line 271
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 272
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mEditText:Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView$RemoteEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public setRemoved()V
    .locals 1

    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoved:Z

    .line 437
    return-void
.end method

.method public setRevealParameters(III)V
    .locals 0
    .param p1, "cx"    # I
    .param p2, "cy"    # I
    .param p3, "r"    # I

    .line 440
    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    .line 441
    iput p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    .line 442
    iput p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    .line 443
    return-void
.end method

.method public setWrapper(Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;)V
    .locals 0
    .param p1, "wrapper"    # Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 464
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    .line 465
    return-void
.end method

.method public stealFocusFrom(Lcom/android/systemui/statusbar/policy/RemoteInputView;)V
    .locals 3
    .param p1, "other"    # Lcom/android/systemui/statusbar/policy/RemoteInputView;

    .line 383
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->close()V

    .line 384
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 385
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInputs:[Landroid/app/RemoteInput;

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 386
    iget v0, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCx:I

    iget v1, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealCy:I

    iget v2, p1, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mRevealR:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focus()V

    .line 388
    return-void
.end method

.method public updatePendingIntentFromActions([Landroid/app/Notification$Action;)Z
    .locals 12
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto :goto_3

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 401
    .local v0, "current":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 402
    return v1

    .line 405
    :cond_1
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_8

    aget-object v4, p1, v3

    .line 406
    .local v4, "a":Landroid/app/Notification$Action;
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    .line 407
    .local v5, "inputs":[Landroid/app/RemoteInput;
    iget-object v6, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_7

    if-nez v5, :cond_2

    .line 408
    goto :goto_2

    .line 410
    :cond_2
    iget-object v6, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 411
    .local v6, "candidate":Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 412
    goto :goto_2

    .line 415
    :cond_3
    const/4 v7, 0x0

    .line 416
    .local v7, "input":Landroid/app/RemoteInput;
    array-length v8, v5

    move-object v9, v7

    move v7, v1

    .end local v7    # "input":Landroid/app/RemoteInput;
    .local v9, "input":Landroid/app/RemoteInput;
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v10, v5, v7

    .line 417
    .local v10, "i":Landroid/app/RemoteInput;
    invoke-virtual {v10}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 418
    move-object v9, v10

    .line 416
    .end local v10    # "i":Landroid/app/RemoteInput;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 421
    :cond_5
    if-nez v9, :cond_6

    .line 422
    goto :goto_2

    .line 424
    :cond_6
    iget-object v1, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 425
    invoke-virtual {p0, v5, v9}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    .line 426
    const/4 v1, 0x1

    return v1

    .line 405
    .end local v4    # "a":Landroid/app/Notification$Action;
    .end local v5    # "inputs":[Landroid/app/RemoteInput;
    .end local v6    # "candidate":Landroid/content/Intent;
    .end local v9    # "input":Landroid/app/RemoteInput;
    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 428
    :cond_8
    return v1

    .line 398
    .end local v0    # "current":Landroid/content/Intent;
    :cond_9
    :goto_3
    return v1
.end method
