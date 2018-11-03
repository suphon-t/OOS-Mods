.class public Lcom/oneplus/custom/utils/ParamReader;
.super Ljava/lang/Object;
.source "ParamReader.java"


# static fields
.field private static mParamReadRet:Z

.field private static mParamReadbyte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/custom/utils/ParamReader;->mParamReadRet:Z

    return-void
.end method

.method public static getCustFlagVal()I
    .locals 13

    .line 40
    const/4 v0, 0x0

    .line 43
    .local v0, "result":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    if-gt v1, v4, :cond_5

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/module/param_read_write/parameters/cust_flag"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "themeStateFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    const-string v2, "ParamReader"

    const-string v3, "custom_fn not existed"

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v0

    .line 51
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 54
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_1
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v3

    goto :goto_1

    :pswitch_2
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    move v5, v2

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 62
    :pswitch_3
    const/4 v0, 0x3

    .line 63
    goto :goto_2

    .line 59
    :pswitch_4
    const/4 v0, 0x2

    .line 60
    goto :goto_2

    .line 56
    :pswitch_5
    const/4 v0, 0x1

    .line 57
    nop

    .line 65
    :goto_2
    goto :goto_0

    .line 72
    .end local v6    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 73
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 77
    :goto_3
    nop

    .line 78
    :goto_4
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .end local v0    # "result":I
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "themeStateFile":Ljava/io/File;
    :goto_5
    const-string v5, "getCustFlagVal ~P result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v0

    .line 71
    .restart local v0    # "result":I
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "themeStateFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_8

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 75
    :catch_2
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 77
    :cond_3
    :goto_6
    nop

    .line 78
    :goto_7
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 71
    :goto_8
    nop

    .line 72
    if-eqz v1, :cond_4

    .line 73
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 75
    :catch_3
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 77
    :cond_4
    :goto_9
    nop

    .line 78
    :goto_a
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 83
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "themeStateFile":Ljava/io/File;
    :cond_5
    :try_start_5
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    .local v1, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getService"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 85
    .local v4, "getService":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ParamService"

    aput-object v6, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    .local v5, "oRemoteService":Ljava/lang/Object;
    const-string v7, "com.oem.os.IParamService$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 87
    .local v7, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "asInterface"

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 88
    .local v8, "asInterface":Ljava/lang/reflect/Method;
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 89
    .local v6, "oIParamService":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getParamIntSYNC"

    new-array v11, v3, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 91
    .local v9, "getParamIntSYNC":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v2

    invoke-virtual {v9, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 92
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCustFlagVal P~ result = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 95
    .end local v1    # "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getService":Ljava/lang/reflect/Method;
    .end local v5    # "oRemoteService":Ljava/lang/Object;
    .end local v6    # "oIParamService":Ljava/lang/Object;
    .end local v7    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "asInterface":Ljava/lang/reflect/Method;
    .end local v9    # "getParamIntSYNC":Ljava/lang/reflect/Method;
    goto :goto_b

    .line 93
    :catch_4
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustFlagVal throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
