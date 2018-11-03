.class Lcom/android/systemui/recents/Recents$1$1;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents$1;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/Recents$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/recents/Recents$1;

    .line 141
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$1$1;->this$1:Lcom/android/systemui/recents/Recents$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$1$1;->this$1:Lcom/android/systemui/recents/Recents$1;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents$1;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-static {v0}, Lcom/android/systemui/recents/Recents;->access$200(Lcom/android/systemui/recents/Recents;)V

    .line 145
    return-void
.end method
