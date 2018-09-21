.class public Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/DozeParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntInOutMatcher"
.end annotation


# instance fields
.field private final mDefaultIsIn:Z

.field private final mIsIn:Landroid/util/SparseBooleanArray;

.field final mSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "spec"    # Ljava/lang/String;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "defaultIsIn":Z
    const/4 v1, 0x0

    .line 288
    .local v1, "foundWildcard":Z
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    .line 289
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    .line 291
    const-string v2, ","

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    .end local v0    # "defaultIsIn":Z
    .local v5, "defaultIsIn":Z
    :goto_0
    if-ge v0, v3, :cond_7

    aget-object v6, v2, v0

    .line 292
    .local v6, "itemPrefixed":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    .line 296
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x21

    const/4 v9, 0x1

    if-eq v7, v8, :cond_0

    move v7, v9

    goto :goto_1

    :cond_0
    move v7, v4

    .line 297
    .local v7, "isIn":Z
    :goto_1
    if-eqz v7, :cond_1

    move-object v8, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 299
    .local v8, "item":Ljava/lang/String;
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    .line 304
    const-string v9, "*"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 305
    if-nez v1, :cond_2

    .line 309
    move v5, v7

    .line 310
    const/4 v1, 0x1

    goto :goto_3

    .line 306
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal spec, `*` must not appear multiple times in `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 313
    .local v9, "key":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_4

    .line 317
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v9, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 291
    .end local v6    # "itemPrefixed":Ljava/lang/String;
    .end local v7    # "isIn":Z
    .end local v8    # "item":Ljava/lang/String;
    .end local v9    # "key":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    .restart local v6    # "itemPrefixed":Ljava/lang/String;
    .restart local v7    # "isIn":Z
    .restart local v8    # "item":Ljava/lang/String;
    .restart local v9    # "key":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal spec, `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "` must not appear multiple times in `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    .end local v9    # "key":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    .end local v7    # "isIn":Z
    .end local v8    # "item":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal spec, must not have zero-length items: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .end local v6    # "itemPrefixed":Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_8

    .line 325
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    .line 326
    return-void

    .line 322
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal spec, must specify either * or !*"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    .end local v1    # "foundWildcard":Z
    .end local v5    # "defaultIsIn":Z
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spec must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isIn(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mIsIn:Landroid/util/SparseBooleanArray;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mDefaultIsIn:Z

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method
