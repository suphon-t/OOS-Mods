.class public Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slot"
.end annotation


# instance fields
.field private mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

.field private final mName:Ljava/lang/String;

.field private mSubSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconHolder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 124
    return-void
.end method

.method private getIndexForTag(I)I
    .locals 3
    .param p1, "tag"    # I

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 212
    .local v1, "h":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 213
    return v0

    .line 210
    .end local v1    # "h":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .param p2, "tag"    # I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 184
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 207
    :cond_2
    return-void
.end method

.method private subSlotsString()Ljava/lang/String;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 280
    const-string v0, ""

    return-object v0

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " subSlots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHolder(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 148
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v0

    .line 149
    .local v0, "tag":I
    if-nez v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_0

    .line 152
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->setSubSlot(Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;I)V

    .line 154
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 171
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    .line 173
    :cond_0
    return-void
.end method

.method public getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 3
    .param p1, "tag"    # I

    .line 132
    if-nez p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    .line 138
    .local v1, "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 139
    return-object v1

    .line 141
    .end local v1    # "holder":Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHolderListInViewOrder()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "holders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 266
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasIconsInSlot()Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public numberOfIcons()I
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 229
    .local v0, "num":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public removeForTag(I)V
    .locals 2
    .param p1, "tag"    # I

    .line 157
    if-nez p1, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v0

    .line 161
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 165
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 275
    const-string v0, "(%s) %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->subSlotsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public viewIndexOffsetForTag(I)I
    .locals 2
    .param p1, "tag"    # I

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 245
    .local v0, "subSlots":I
    if-nez p1, :cond_1

    .line 246
    return v0

    .line 249
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v1

    sub-int v1, v0, v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method
