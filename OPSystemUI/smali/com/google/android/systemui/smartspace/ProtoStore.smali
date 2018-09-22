.class public Lcom/google/android/systemui/smartspace/ProtoStore;
.super Ljava/lang/Object;
.source "ProtoStore.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 50
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/ProtoStore;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;)Z
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .line 59
    .local p2, "protoOut":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/ProtoStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 61
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    .line 62
    .local v4, "size":I
    new-array v5, v4, [B

    .line 63
    .local v5, "bytes":[B
    array-length v6, v5

    invoke-virtual {v2, v5, v1, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 64
    invoke-static {p2, v5}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    const/4 v6, 0x1

    .line 66
    :try_start_2
    invoke-static {v3, v2}, Lcom/google/android/systemui/smartspace/ProtoStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 65
    return v6

    .line 66
    .end local v4    # "size":I
    .end local v5    # "bytes":[B
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 60
    :catch_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :goto_0
    :try_start_4
    invoke-static {v3, v2}, Lcom/google/android/systemui/smartspace/ProtoStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 69
    .end local v2    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 70
    .local v2, "exc":Ljava/lang/Exception;
    const-string v3, "ProtoStore"

    const-string v4, "unable to load data"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    return v1

    .line 66
    .end local v2    # "exc":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 67
    .local v2, "exc":Ljava/io/FileNotFoundException;
    const-string v3, "ProtoStore"

    const-string v4, "no cached data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return v1
.end method

.method public store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V
    .locals 5
    .param p1, "proto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p2, "file"    # Ljava/lang/String;

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/ProtoStore;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 44
    :try_start_1
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    .line 45
    .local v2, "bytes":[B
    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 46
    .end local v2    # "bytes":[B
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 42
    :catch_0
    move-exception v1

    goto :goto_1

    .line 47
    :cond_0
    const-string v2, "ProtoStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/ProtoStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    invoke-static {v1, v0}, Lcom/google/android/systemui/smartspace/ProtoStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 42
    :goto_1
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-static {v1, v0}, Lcom/google/android/systemui/smartspace/ProtoStore;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 52
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 53
    .local v0, "exc":Ljava/lang/Exception;
    const-string v1, "ProtoStore"

    const-string v2, "unable to write file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "exc":Ljava/lang/Exception;
    goto :goto_4

    .line 50
    :catch_2
    move-exception v0

    .line 51
    .local v0, "exc":Ljava/io/FileNotFoundException;
    const-string v1, "ProtoStore"

    const-string v2, "file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "exc":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    nop

    .line 55
    :goto_4
    return-void
.end method
