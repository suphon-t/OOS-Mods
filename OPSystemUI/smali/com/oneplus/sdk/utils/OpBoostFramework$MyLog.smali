.class Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;
.super Ljava/lang/Object;
.source "OpBoostFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sdk/utils/OpBoostFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLog"
.end annotation


# direct methods
.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 163
    invoke-static {p0, p1}, Lcom/oneplus/sdk/utils/OpBoostFramework$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/oneplus/sdk/utils/OpBoostFramework;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method
