.class public Lcom/android/systemui/volume/MediaRouterWrapper;
.super Ljava/lang/Object;
.source "MediaRouterWrapper.java"


# instance fields
.field private final mRouter:Landroid/support/v7/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter;)V
    .locals 0
    .param p1, "router"    # Landroid/support/v7/media/MediaRouter;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/volume/MediaRouterWrapper;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 34
    return-void
.end method


# virtual methods
.method public removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v7/media/MediaRouter$Callback;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/volume/MediaRouterWrapper;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 42
    return-void
.end method
