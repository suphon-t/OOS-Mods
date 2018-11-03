.class public final synthetic Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/app/RemoteAction;


# direct methods
.method public synthetic constructor <init>(Landroid/app/RemoteAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;->f$0:Landroid/app/RemoteAction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/-$$Lambda$PipControlsView$HMvSX-xIxW1kpM7rGrVPgysk-xY;->f$0:Landroid/app/RemoteAction;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/tv/PipControlsView;->lambda$updateUserActions$1(Landroid/app/RemoteAction;Landroid/view/View;)V

    return-void
.end method
