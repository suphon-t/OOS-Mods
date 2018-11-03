.class public Lcom/android/systemui/pip/tv/PipControlsView;
.super Landroid/widget/LinearLayout;
.source "PipControlsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/tv/PipControlsView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomButtonViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/pip/tv/PipControlButtonView;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

.field private final mPipManager:Lcom/android/systemui/pip/tv/PipManager;

.field private final mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

.field private mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/pip/tv/PipControlsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/pip/tv/PipControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    invoke-static {}, Lcom/android/systemui/pip/tv/PipManager;->getInstance()Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsView$1;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    .line 86
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsView$2;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    .line 93
    new-instance v0, Lcom/android/systemui/pip/tv/PipControlsView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/tv/PipControlsView$3;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01eb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mHandler:Landroid/os/Handler;

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->setOrientation(I)V

    .line 124
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->setGravity(I)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateMediaController()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/pip/tv/PipControlsView;Lcom/android/systemui/pip/tv/PipControlButtonView;)Lcom/android/systemui/pip/tv/PipControlButtonView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;
    .param p1, "x1"    # Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 48
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusedChild:Lcom/android/systemui/pip/tv/PipControlButtonView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipControlsView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mListener:Lcom/android/systemui/pip/tv/PipControlsView$Listener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic lambda$updateUserActions$0(Lcom/android/systemui/pip/tv/PipControlButtonView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "actionView"    # Lcom/android/systemui/pip/tv/PipControlButtonView;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 231
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    return-void
.end method

.method static synthetic lambda$updateUserActions$1(Landroid/app/RemoteAction;Landroid/view/View;)V
    .locals 3
    .param p0, "action"    # Landroid/app/RemoteAction;
    .param p1, "v"    # Landroid/view/View;

    .line 238
    :try_start_0
    invoke-virtual {p0}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v1, Lcom/android/systemui/pip/tv/PipControlsView;->TAG:Ljava/lang/String;

    const-string v2, "Failed to send action"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private updateMediaController()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 190
    .local v0, "newController":Landroid/media/session/MediaController;
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-ne v1, v0, :cond_0

    .line 191
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 196
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 200
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    .line 201
    return-void
.end method

.method private updateUserActions()V
    .locals 8

    .line 208
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d01ec

    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 213
    .local v0, "buttonView":Lcom/android/systemui/pip/tv/PipControlButtonView;
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->addView(Landroid/view/View;)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v0    # "buttonView":Lcom/android/systemui/pip/tv/PipControlButtonView;
    goto :goto_0

    .line 218
    :cond_0
    move v0, v2

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v4, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 220
    nop

    .line 219
    move v4, v2

    goto :goto_2

    .line 221
    :cond_1
    nop

    .line 219
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    .end local v0    # "i":I
    :cond_2
    nop

    .local v2, "i":I
    :goto_3
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    .line 227
    .local v2, "action":Landroid/app/RemoteAction;
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 230
    .local v3, "actionView":Lcom/android/systemui/pip/tv/PipControlButtonView;
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;

    invoke-direct {v6, v3}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$ZwQyQkGsN0bsRufZ6MVGwaQtJA8;-><init>(Lcom/android/systemui/pip/tv/PipControlButtonView;)V

    iget-object v7, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 234
    invoke-virtual {v2}, Landroid/app/RemoteAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 236
    new-instance v4, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;

    invoke-direct {v4, v2}, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;-><init>(Landroid/app/RemoteAction;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :cond_3
    invoke-virtual {v2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setEnabled(Z)V

    .line 245
    invoke-virtual {v2}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_4
    const v4, 0x3f0a3d71    # 0.54f

    :goto_4
    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setAlpha(F)V

    .line 225
    .end local v2    # "action":Landroid/app/RemoteAction;
    .end local v3    # "actionView":Lcom/android/systemui/pip/tv/PipControlButtonView;
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    goto :goto_3

    .line 249
    .end local v2    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    goto :goto_7

    .line 251
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v0

    .line 252
    .local v0, "state":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 253
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    goto :goto_5

    .line 255
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    .line 256
    if-nez v0, :cond_8

    .line 257
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v4, 0x7f080560

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 258
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v4, 0x7f110489

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    goto :goto_5

    .line 260
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v4, 0x7f080564

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setImageResource(I)V

    .line 261
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    const v4, 0x7f11048f

    invoke-virtual {v3, v4}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setText(I)V

    .line 266
    :goto_5
    nop

    .restart local v2    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 267
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomButtonViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pip/tv/PipControlButtonView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setVisibility(I)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 270
    .end local v0    # "state":I
    .end local v2    # "i":I
    :cond_9
    :goto_7
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateMediaController()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->addMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    .line 177
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipManager:Lcom/android/systemui/pip/tv/PipManager;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPipMediaListener:Lcom/android/systemui/pip/tv/PipManager$MediaListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipManager;->removeMediaListener(Lcom/android/systemui/pip/tv/PipManager$MediaListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mMediaControllerCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 186
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 129
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 131
    const v0, 0x7f0a0169

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFullButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$4;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCloseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$5;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0a0316

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/tv/PipControlsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pip/tv/PipControlButtonView;

    iput-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mPlayPauseButtonView:Lcom/android/systemui/pip/tv/PipControlButtonView;

    new-instance v1, Lcom/android/systemui/pip/tv/PipControlsView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/tv/PipControlsView$6;-><init>(Lcom/android/systemui/pip/tv/PipControlsView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/tv/PipControlButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public setActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->updateUserActions()V

    .line 299
    return-void
.end method
