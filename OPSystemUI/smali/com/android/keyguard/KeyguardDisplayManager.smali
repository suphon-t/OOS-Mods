.class public Lcom/android/keyguard/KeyguardDisplayManager;
.super Ljava/lang/Object;
.source "KeyguardDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;
    }
.end annotation


# static fields
.field private static DEBUG:Z


# instance fields
.field private final mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mPresentation:Landroid/app/Presentation;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$1;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 91
    new-instance v0, Lcom/android/keyguard/KeyguardDisplayManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardDisplayManager$2;-><init>(Lcom/android/keyguard/KeyguardDisplayManager;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 46
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardDisplayManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardDisplayManager;

    .line 34
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    return v0
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 62
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 63
    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    const-string v2, "hide"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    .line 67
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 68
    return-void
.end method

.method public show()V
    .locals 5

    .line 52
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 53
    sget-boolean v0, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardDisplayManager"

    const-string v2, "show"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardDisplayManager;->updateDisplays(Z)V

    .line 58
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mShowing:Z

    .line 59
    return-void
.end method

.method protected updateDisplays(Z)V
    .locals 8
    .param p1, "showing"    # Z

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 101
    .local v0, "originalPresentation":Landroid/app/Presentation;
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 102
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 104
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 106
    .local v3, "useDisplay":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 108
    .local v4, "presentationDisplay":Landroid/view/Display;
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v5

    if-eq v5, v4, :cond_3

    .line 109
    sget-boolean v5, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "KeyguardDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display gone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v7}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->dismiss()V

    .line 111
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 114
    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    .line 115
    sget-boolean v5, Lcom/android/keyguard/KeyguardDisplayManager;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "KeyguardDisplayManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keyguard enabled on display: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4
    new-instance v5, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mContext:Landroid/content/Context;

    const v7, 0x7f12052d

    invoke-direct {v5, v6, v4, v7}, Lcom/android/keyguard/KeyguardDisplayManager$KeyguardPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 118
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v5, v6}, Landroid/app/Presentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 120
    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v5}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_2

    .line 121
    :catch_0
    move-exception v5

    .line 122
    .local v5, "ex":Landroid/view/WindowManager$InvalidDisplayException;
    const-string v6, "KeyguardDisplayManager"

    const-string v7, "Invalid display:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 126
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    .end local v3    # "useDisplay":Z
    .end local v4    # "presentationDisplay":Landroid/view/Display;
    .end local v5    # "ex":Landroid/view/WindowManager$InvalidDisplayException;
    :cond_5
    :goto_2
    goto :goto_3

    .line 127
    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v2, :cond_7

    .line 128
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->dismiss()V

    .line 129
    iput-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    .line 134
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eq v1, v0, :cond_9

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    if-eqz v1, :cond_8

    .line 136
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_4

    :cond_8
    const/4 v1, -0x1

    .line 137
    .local v1, "displayId":I
    :goto_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardDisplayManager;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v2, v1}, Lcom/android/keyguard/ViewMediatorCallback;->onSecondaryDisplayShowingChanged(I)V

    .line 139
    .end local v1    # "displayId":I
    :cond_9
    return-void
.end method
