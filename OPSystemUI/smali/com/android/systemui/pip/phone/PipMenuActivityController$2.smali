.class Lcom/android/systemui/pip/phone/PipMenuActivityController$2;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"

# interfaces
.implements Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 197
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaActionsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "mediaActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$602(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->access$700(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    .line 202
    return-void
.end method
