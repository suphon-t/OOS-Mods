.class Landroidx/slice/compat/SliceProviderCompat$1;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/compat/SliceProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/compat/SliceProviderCompat;


# direct methods
.method constructor <init>(Landroidx/slice/compat/SliceProviderCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/compat/SliceProviderCompat;

    .line 283
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$1;->this$0:Landroidx/slice/compat/SliceProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 286
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 287
    const-string v0, "SliceProviderCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out while handling slice callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/slice/compat/SliceProviderCompat$1;->this$0:Landroidx/slice/compat/SliceProviderCompat;

    invoke-static {v2}, Landroidx/slice/compat/SliceProviderCompat;->access$000(Landroidx/slice/compat/SliceProviderCompat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-void
.end method
