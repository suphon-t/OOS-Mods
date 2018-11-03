.class Lcom/android/systemui/power/OverHeatProtectorUtils$1;
.super Ljava/lang/Object;
.source "OverHeatProtectorUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/OverHeatProtectorUtils;->killAllRunningProcesses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$processes:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtectorUtils$1;->val$processes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtectorUtils$1;->val$processes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 106
    .local v1, "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 107
    .local v2, "userId":I
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 109
    .local v6, "pkg":Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/power/OverHeatProtectorUtils;->access$000(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 110
    goto :goto_2

    .line 113
    :cond_0
    invoke-static {v6, v2}, Lcom/android/systemui/power/OverHeatProtectorUtils;->access$100(Ljava/lang/String;I)V

    .line 107
    .end local v6    # "pkg":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "p":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "userId":I
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    return-void
.end method
