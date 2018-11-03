.class public Landroidx/slice/core/SliceActionImpl;
.super Ljava/lang/Object;
.source "SliceActionImpl.java"

# interfaces
.implements Landroidx/slice/core/SliceAction;


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mActionItem:Landroidx/slice/SliceItem;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

.field private mImageMode:I

.field private mIsChecked:Z

.field private mIsToggle:Z

.field private mPriority:I

.field private mSliceItem:Landroidx/slice/SliceItem;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
    .param p2, "actionIcon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p3, "imageMode"    # I
    .param p4, "actionTitle"    # Ljava/lang/CharSequence;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 100
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    .line 101
    iput-object p2, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 102
    iput-object p4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 103
    iput p3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 8
    .param p1, "slice"    # Landroidx/slice/SliceItem;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 149
    iput-object p1, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    .line 150
    const-string v1, "action"

    invoke-static {p1, v1}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 151
    .local v1, "actionItem":Landroidx/slice/SliceItem;
    if-nez v1, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iput-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    .line 156
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    const-string v3, "image"

    invoke-static {v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 157
    .local v2, "iconItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    .line 159
    const-string v3, "no_tint"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "large"

    .line 160
    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    .line 163
    :cond_3
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    const-string/jumbo v4, "text"

    const-string/jumbo v5, "title"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 165
    .local v3, "titleItem":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_4

    .line 166
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    .line 168
    :cond_4
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string/jumbo v5, "text"

    const-string v6, "content_description"

    invoke-static {v4, v5, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    .line 170
    .local v4, "cdItem":Landroidx/slice/SliceItem;
    if-eqz v4, :cond_5

    .line 171
    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    .line 173
    :cond_5
    const-string/jumbo v5, "toggle"

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    .line 174
    iget-boolean v5, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v5, :cond_6

    .line 175
    const-string v5, "selected"

    invoke-virtual {v1, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    .line 177
    :cond_6
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    const-string v6, "int"

    const-string v7, "priority"

    invoke-static {v5, v6, v7}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    .line 179
    .local v5, "priority":Landroidx/slice/SliceItem;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    nop

    :cond_7
    iput v0, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    .line 180
    return-void
.end method


# virtual methods
.method public buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;
    .locals 6
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 312
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 313
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 314
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "no_tint"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "hints":[Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    invoke-virtual {v0, v4, v2, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 319
    .end local v1    # "hints":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    const-string/jumbo v4, "title"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 322
    :cond_2
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    const-string v4, "content_description"

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 325
    :cond_3
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    if-eqz v1, :cond_4

    .line 326
    const-string v1, "selected"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 328
    :cond_4
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 329
    iget v1, p0, Landroidx/slice/core/SliceActionImpl;->mPriority:I

    const-string v4, "priority"

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v3}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 331
    :cond_5
    iget-boolean v1, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v1, :cond_6

    const-string/jumbo v2, "toggle"

    nop

    :cond_6
    move-object v1, v2

    .line 332
    .local v1, "subtype":Ljava/lang/String;
    const-string v2, "shortcut"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 333
    iget-object v2, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 334
    invoke-virtual {p1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    return-object v2
.end method

.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    .line 217
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mAction:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getActionItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mActionItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/support/v4/graphics/drawable/IconCompat;
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getImageMode()I
    .locals 1

    .line 285
    iget v0, p0, Landroidx/slice/core/SliceActionImpl;->mImageMode:I

    return v0
.end method

.method public getSliceItem()Landroidx/slice/SliceItem;
    .locals 1

    .line 302
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mSliceItem:Landroidx/slice/SliceItem;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsChecked:Z

    return v0
.end method

.method public isDefaultToggle()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceActionImpl;->mIcon:Landroid/support/v4/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isToggle()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Landroidx/slice/core/SliceActionImpl;->mIsToggle:Z

    return v0
.end method
