.class Lcom/android/systemui/recents/Recents$12;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents;->postToSystemUser(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .line 934
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$12;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$12;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$200(Lcom/android/systemui/recents/Recents;)V

    .line 938
    return-void
.end method
