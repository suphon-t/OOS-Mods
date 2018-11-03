.class public Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;
.super Ljava/lang/Object;
.source "MetaDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/opcarmode/MetaDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundData"
.end annotation


# instance fields
.field private mBackground:I

.field private mDndBackground:I

.field final synthetic this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;


# direct methods
.method private constructor <init>(Lcom/android/systemui/opcarmode/MetaDataLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;

    .line 329
    iput-object p1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader;
    .param p2, "x1"    # Lcom/android/systemui/opcarmode/MetaDataLoader$1;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "background"    # Ljava/lang/String;
    .param p2, "dndBackground"    # Ljava/lang/String;

    .line 333
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mBackground:I

    .line 334
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mDndBackground:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mBackground:I

    .line 337
    iput v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mDndBackground:I

    .line 338
    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->this$0:Lcom/android/systemui/opcarmode/MetaDataLoader;

    invoke-static {v2, v1}, Lcom/android/systemui/opcarmode/MetaDataLoader;->access$702(Lcom/android/systemui/opcarmode/MetaDataLoader;Z)Z

    .line 339
    const-string v1, "MetaDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid background found: background="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dndBackground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mBackground:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 358
    const-string v0, "#08000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDndBackgroundColor()I
    .locals 1

    .line 354
    iget v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mDndBackground:I

    return v0
.end method

.method public getDndDividerColor()I
    .locals 1

    .line 362
    const-string v0, "#14FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 346
    iget v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mBackground:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mDndBackground:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mBackground:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dndBackground=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->mDndBackground:I

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    return-object v0
.end method
