.class Lcom/oneplus/custom/utils/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# static fields
.field private static sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 12
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 13
    .local v0, "systemPropertiesClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 14
    const-string v3, "get"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 15
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "systemPropertiesClass":Ljava/lang/Class;
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    goto :goto_1

    .line 17
    :catch_1
    move-exception v0

    .line 21
    :cond_0
    :goto_0
    nop

    .line 23
    :cond_1
    :goto_1
    sget-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 25
    :try_start_1
    sget-object v0, Lcom/oneplus/custom/utils/SystemProperties;->sSystemPropertiesGetMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    .line 30
    :catch_2
    move-exception v0

    goto :goto_3

    .line 28
    :catch_3
    move-exception v0

    goto :goto_2

    .line 26
    :catch_4
    move-exception v0

    .line 32
    :goto_2
    nop

    .line 34
    :cond_2
    :goto_3
    return-object v3
.end method
