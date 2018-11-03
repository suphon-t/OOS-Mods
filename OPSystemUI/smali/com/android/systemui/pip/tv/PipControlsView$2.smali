.class Lcom/android/systemui/pip/tv/PipControlsView$2;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/tv/PipControlsView;

    .line 86
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$2;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaControllerChanged()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipControlsView$2;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$100(Lcom/android/systemui/pip/tv/PipControlsView;)V

    .line 90
    return-void
.end method
