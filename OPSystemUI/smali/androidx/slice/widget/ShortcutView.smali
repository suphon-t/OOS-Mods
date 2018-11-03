.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "ShortcutView.java"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mIcon:Landroidx/slice/SliceItem;

.field private mLabel:Landroidx/slice/SliceItem;

.field private mLargeIconSize:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mSmallIconSize:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method private determineShortcutItems(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 154
    .local v0, "primaryAction":Landroidx/slice/SliceItem;
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    .line 156
    .local v1, "slice":Landroidx/slice/Slice;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 159
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "image"

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v5, v6, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 161
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-static {v4, v5, v6, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    goto :goto_0

    .line 165
    :cond_1
    const-string v4, "action"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 168
    :goto_0
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-nez v4, :cond_2

    .line 169
    const-string v4, "image"

    const-string/jumbo v5, "title"

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 172
    :cond_2
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v4, :cond_3

    .line 173
    const-string/jumbo v4, "text"

    const-string/jumbo v5, "title"

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 177
    :cond_3
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-nez v4, :cond_4

    .line 178
    const-string v4, "image"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 181
    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v4, :cond_5

    .line 182
    const-string/jumbo v4, "text"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v1, v4, v5, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 186
    :cond_5
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v4, :cond_9

    .line 187
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 188
    .local v4, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 189
    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 188
    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 190
    .local v5, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_9

    .line 192
    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-nez v7, :cond_7

    .line 193
    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 194
    .local v7, "sb":Landroidx/slice/Slice$Builder;
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 195
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroidx/slice/widget/SliceViewUtil;->createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v9

    const-string v10, "large"

    new-array v11, v2, [Ljava/lang/String;

    invoke-virtual {v7, v9, v10, v11}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 196
    invoke-virtual {v7}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    iput-object v9, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 198
    .end local v7    # "sb":Landroidx/slice/Slice$Builder;
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    if-nez v7, :cond_8

    .line 199
    new-instance v7, Landroidx/slice/Slice$Builder;

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 200
    .restart local v7    # "sb":Landroidx/slice/Slice$Builder;
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    invoke-virtual {v7, v8, v3, v9}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 201
    invoke-virtual {v7}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    iput-object v3, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 203
    .end local v7    # "sb":Landroidx/slice/Slice$Builder;
    :cond_8
    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-nez v3, :cond_9

    .line 204
    new-instance v3, Landroidx/slice/SliceItem;

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 205
    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 204
    invoke-static {p1, v2, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v2, Landroidx/slice/Slice$Builder;

    .line 206
    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v7}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v9

    const-string v10, "action"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 211
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_9
    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 112
    const/4 v0, 0x3

    return v0
.end method

.method public performClick()Z
    .locals 7

    .line 117
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 122
    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_3

    .line 130
    new-instance v0, Landroidx/slice/widget/EventInfo;

    const/4 v4, 0x3

    const/4 v5, -0x1

    invoke-direct {v0, v4, v2, v5, v1}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 133
    .local v0, "ei":Landroidx/slice/widget/EventInfo;
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_2
    new-instance v1, Landroidx/slice/SliceItem;

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 135
    invoke-virtual {v4}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "slice"

    iget-object v6, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 136
    invoke-virtual {v6}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v5, v3, v6}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 137
    .local v1, "interactedItem":Landroidx/slice/SliceItem;
    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v3, v0, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "ei":Landroidx/slice/widget/EventInfo;
    .end local v1    # "interactedItem":Landroidx/slice/SliceItem;
    :cond_3
    goto :goto_2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "ShortcutView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4
    :goto_2
    return v2
.end method

.method public resetView()V
    .locals 1

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 216
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    .line 217
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    .line 218
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mLabel:Landroidx/slice/SliceItem;

    .line 219
    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    .line 220
    invoke-virtual {p0, v0}, Landroidx/slice/widget/ShortcutView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->removeAllViews()V

    .line 222
    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 8
    .param p1, "sliceContent"    # Landroidx/slice/widget/ListContent;

    .line 77
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    .line 78
    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 79
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/widget/ShortcutView;->determineShortcutItems(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getColorItem()Landroidx/slice/SliceItem;

    move-result-object v0

    .line 84
    .local v0, "colorItem":Landroidx/slice/SliceItem;
    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "int"

    const-string v3, "color"

    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 87
    :cond_1
    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v1

    .line 90
    .local v1, "color":I
    :goto_0
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 91
    .local v2, "circle":Landroid/graphics/drawable/Drawable;
    invoke-static {v2, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 92
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v3, "iv":Landroid/widget/ImageView;
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    const-string v5, "no_tint"

    invoke-virtual {v4, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 95
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/slice/widget/ShortcutView;->addView(Landroid/view/View;)V

    .line 98
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_5

    .line 99
    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    const-string v5, "no_tint"

    invoke-virtual {v4, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    .line 100
    .local v4, "isImage":Z
    if-eqz v4, :cond_4

    iget v5, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    goto :goto_1

    :cond_4
    iget v5, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    .line 101
    .local v5, "iconSize":I
    :goto_1
    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/slice/SliceItem;

    invoke-virtual {v7}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v7

    invoke-static {v6, v5, v7, v4, p0}, Landroidx/slice/widget/SliceViewUtil;->createCircledIcon(Landroid/content/Context;ILandroid/support/v4/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V

    .line 103
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSlice()Landroidx/slice/Slice;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Landroidx/slice/widget/ShortcutView;->mUri:Landroid/net/Uri;

    .line 104
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    .line 105
    .end local v4    # "isImage":Z
    .end local v5    # "iconSize":I
    goto :goto_2

    .line 106
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroidx/slice/widget/ShortcutView;->setClickable(Z)V

    .line 108
    :goto_2
    return-void
.end method
