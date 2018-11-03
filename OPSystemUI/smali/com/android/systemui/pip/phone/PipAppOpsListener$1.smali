.class Lcom/android/systemui/pip/phone/PipAppOpsListener$1;
.super Ljava/lang/Object;
.source "PipAppOpsListener.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipAppOpsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipAppOpsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onOpChanged$0(Lcom/android/systemui/pip/phone/PipAppOpsListener$1;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$500(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 48
    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$000(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$100(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v0

    .line 49
    .local v0, "topPipActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$000(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, p2, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 52
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 53
    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$200(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x4a

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-static {v2}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$300(Lcom/android/systemui/pip/phone/PipAppOpsListener;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipAppOpsListener$1$UK38MrwiG74h0N6r_NQ6zq34Mqo;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipAppOpsListener$1$UK38MrwiG74h0N6r_NQ6zq34Mqo;-><init>(Lcom/android/systemui/pip/phone/PipAppOpsListener$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "topPipActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipAppOpsListener$1;->this$0:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipAppOpsListener;->access$400(Lcom/android/systemui/pip/phone/PipAppOpsListener;)V

    .line 62
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method
