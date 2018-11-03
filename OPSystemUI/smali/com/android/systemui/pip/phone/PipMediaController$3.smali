.class Lcom/android/systemui/pip/phone/PipMediaController$3;
.super Ljava/lang/Object;
.source "PipMediaController.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMediaController;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController$3;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "controllers":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMediaController$3;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {v0, p1}, Lcom/android/systemui/pip/phone/PipMediaController;->access$200(Lcom/android/systemui/pip/phone/PipMediaController;Ljava/util/List;)V

    .line 107
    return-void
.end method
