.class Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity$1;->this$0:Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/ForcedResizableInfoActivity;->finish()V

    .line 48
    return-void
.end method
