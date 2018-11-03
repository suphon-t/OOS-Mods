.class Lcom/android/systemui/volume/OPThreekeyNavigationDialog$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OPThreekeyNavigationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    .line 731
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$4;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 734
    invoke-static {}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitching / userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    monitor-enter p0

    .line 737
    :try_start_0
    monitor-exit p0

    .line 738
    return-void

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
