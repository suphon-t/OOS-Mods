.class public Lcom/oneplus/sdk/utils/OpBoostFramework;
.super Ljava/lang/Object;
.source "OpBoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sPerfBoostInstance:Landroid/util/BoostFramework;

.field private static sProjectName:Ljava/lang/String;

.field private static sProjectName_old:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->DBG:Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    .line 51
    const-string v0, "ro.prj_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    .line 53
    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    .line 63
    :cond_0
    const-string v0, "OpBoostFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpBoostFramework() : sPerfBoostInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/oneplus/sdk/utils/OpBoostFramework;->DBG:Z

    return v0
.end method


# virtual methods
.method public acquireBoostFor(II)I
    .locals 6
    .param p1, "policy"    # I
    .param p2, "duration"    # I

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "ret":I
    const-string v1, ""

    .line 87
    .local v1, "projectName":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName_old:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_0
    sget-object v1, Lcom/oneplus/sdk/utils/OpBoostFramework;->sProjectName:Ljava/lang/String;

    .line 92
    :goto_0
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor() : policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor() : duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projectName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_1

    .line 123
    const/4 v0, -0x3

    goto/16 :goto_3

    .line 98
    :cond_1
    const/16 v2, 0x7d0

    if-gt p2, v2, :cond_8

    if-gez p2, :cond_2

    goto/16 :goto_2

    .line 103
    :cond_2
    :try_start_0
    const-string v2, "14049"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_3

    .line 104
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto/16 :goto_3

    .line 105
    :cond_3
    const-string v2, "15801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_3

    .line 108
    :cond_4
    const-string v2, "15811"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    goto :goto_3

    .line 111
    :cond_5
    const-string v2, "16859"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "17801"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "17819"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1

    .line 115
    :cond_6
    const-string v2, "OpBoostFramework"

    const-string v4, "Try to acquire full speed perf lock for unspecified proj"

    invoke-static {v2, v4}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 120
    goto :goto_3

    .line 113
    :cond_7
    :goto_1
    sget-object v2, Lcom/oneplus/sdk/utils/OpBoostFramework;->sPerfBoostInstance:Landroid/util/BoostFramework;

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    invoke-virtual {v2, p2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OpBoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    const/4 v0, -0x4

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 99
    :cond_8
    :goto_2
    const/4 v0, -0x2

    .line 130
    :goto_3
    nop

    .line 131
    :goto_4
    const-string v2, "OpBoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireBoostFor++++++() : ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return v0

    nop

    :array_0
    .array-data 4
        0x1e01
        0x20d
        0x4d04
        0x1f12
    .end array-data

    :array_1
    .array-data 4
        0x40800000    # 4.0f
        0x834
        0x40800100    # 4.000122f
        0x640
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x960
        0x40800100    # 4.000122f
        0x640
    .end array-data

    :array_3
    .array-data 4
        0x40800000    # 4.0f
        0xffe
        0x40800100    # 4.000122f
        0xffe
    .end array-data

    :array_4
    .array-data 4
        0x40800000    # 4.0f
        0xffe
        0x40800100    # 4.000122f
        0xffe
    .end array-data
.end method
