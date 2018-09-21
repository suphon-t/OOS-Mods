.class public Landroidx/slice/SliceConvert;
.super Ljava/lang/Object;
.source "SliceConvert.java"


# direct methods
.method public static unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;

    .line 44
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 45
    :cond_0
    new-instance v0, Landroid/app/slice/Slice$Builder;

    .line 46
    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/Slice;->getSpec()Landroidx/slice/SliceSpec;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/slice/Slice$Builder;-><init>(Landroid/net/Uri;Landroid/app/slice/SliceSpec;)V

    .line 47
    .local v0, "builder":Landroid/app/slice/Slice$Builder;
    invoke-virtual {p0}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 48
    invoke-virtual {p0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    .line 49
    .local v2, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "slice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "input"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "long"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v5, "int"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "action"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .end local v2    # "item":Landroidx/slice/SliceItem;
    goto/16 :goto_2

    .line 70
    .restart local v2    # "item":Landroidx/slice/SliceItem;
    :pswitch_0
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .end local v2    # "item":Landroidx/slice/SliceItem;
    goto :goto_2

    .line 67
    .restart local v2    # "item":Landroidx/slice/SliceItem;
    :pswitch_1
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 68
    goto :goto_2

    .line 64
    :pswitch_2
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 65
    goto :goto_2

    .line 61
    :pswitch_3
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-static {v4}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 62
    goto :goto_2

    .line 57
    :pswitch_4
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    .line 57
    invoke-virtual {v0, v3, v4, v5}, Landroid/app/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 59
    goto :goto_2

    .line 54
    :pswitch_5
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getIcon()Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/slice/Slice$Builder;->addIcon(Landroid/graphics/drawable/Icon;Ljava/lang/String;Ljava/util/List;)Landroid/app/slice/Slice$Builder;

    .line 55
    goto :goto_2

    .line 51
    :pswitch_6
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v3

    invoke-static {v3}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/Slice;)Landroid/app/slice/Slice;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/app/slice/Slice$Builder;->addSubSlice(Landroid/app/slice/Slice;Ljava/lang/String;)Landroid/app/slice/Slice$Builder;

    .line 52
    nop

    .line 73
    .end local v2    # "item":Landroidx/slice/SliceItem;
    :goto_2
    goto/16 :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Landroid/app/slice/Slice$Builder;->build()Landroid/app/slice/Slice;

    move-result-object v1

    return-object v1

    .line 44
    .end local v0    # "builder":Landroid/app/slice/Slice$Builder;
    :cond_3
    :goto_3
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;
    .locals 3
    .param p0, "spec"    # Landroidx/slice/SliceSpec;

    .line 78
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Landroid/app/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static unwrap(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 84
    .local p0, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 85
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    if-eqz p0, :cond_0

    .line 86
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceSpec;

    .line 87
    .local v2, "spec":Landroidx/slice/SliceSpec;
    invoke-static {v2}, Landroidx/slice/SliceConvert;->unwrap(Landroidx/slice/SliceSpec;)Landroid/app/slice/SliceSpec;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "spec":Landroidx/slice/SliceSpec;
    goto :goto_0

    .line 90
    :cond_0
    return-object v0
.end method

.method public static wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;
    .locals 7
    .param p0, "slice"    # Landroid/app/slice/Slice;

    .line 97
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 98
    :cond_0
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 99
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    .line 100
    .local v0, "builder":Landroidx/slice/Slice$Builder;
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints(Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 101
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getSpec()Landroid/app/slice/SliceSpec;

    move-result-object v1

    invoke-static {v1}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->setSpec(Landroidx/slice/SliceSpec;)Landroidx/slice/Slice$Builder;

    .line 102
    invoke-virtual {p0}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/SliceItem;

    .line 103
    .local v2, "item":Landroid/app/slice/SliceItem;
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "slice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "input"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "text"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_4
    const-string v5, "long"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v5, "int"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v5, "action"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .end local v2    # "item":Landroid/app/slice/SliceItem;
    goto/16 :goto_2

    .line 125
    .restart local v2    # "item":Landroid/app/slice/SliceItem;
    :pswitch_0
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .end local v2    # "item":Landroid/app/slice/SliceItem;
    goto :goto_2

    .line 122
    .restart local v2    # "item":Landroid/app/slice/SliceItem;
    :pswitch_1
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getInt()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 123
    goto :goto_2

    .line 119
    :pswitch_2
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 120
    goto :goto_2

    .line 116
    :pswitch_3
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v4

    invoke-static {v4}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 117
    goto :goto_2

    .line 112
    :pswitch_4
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getRemoteInput()Landroid/app/RemoteInput;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    .line 112
    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addRemoteInput(Landroid/app/RemoteInput;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 114
    goto :goto_2

    .line 108
    :pswitch_5
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v3

    .line 109
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getHints()Ljava/util/List;

    move-result-object v5

    .line 108
    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 110
    goto :goto_2

    .line 105
    :pswitch_6
    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSlice()Landroid/app/slice/Slice;

    move-result-object v3

    invoke-static {v3}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/slice/SliceItem;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 106
    nop

    .line 128
    .end local v2    # "item":Landroid/app/slice/SliceItem;
    :goto_2
    goto/16 :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    return-object v1

    .line 97
    .end local v0    # "builder":Landroidx/slice/Slice$Builder;
    :cond_3
    :goto_3
    const/4 v0, 0x0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;
    .locals 3
    .param p0, "spec"    # Landroid/app/slice/SliceSpec;

    .line 133
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/slice/SliceSpec;->getRevision()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static wrap(Ljava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;)",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 143
    .local p0, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/slice/SliceSpec;>;"
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 144
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    if-eqz p0, :cond_0

    .line 145
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/slice/SliceSpec;

    .line 146
    .local v2, "spec":Landroid/app/slice/SliceSpec;
    invoke-static {v2}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/SliceSpec;)Landroidx/slice/SliceSpec;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "spec":Landroid/app/slice/SliceSpec;
    goto :goto_0

    .line 149
    :cond_0
    return-object v0
.end method
