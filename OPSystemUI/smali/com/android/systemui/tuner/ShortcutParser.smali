.class public Lcom/android/systemui/tuner/ShortcutParser;
.super Ljava/lang/Object;
.source "ShortcutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    }
.end annotation


# instance fields
.field private mAttrs:Landroid/util/AttributeSet;

.field private final mContext:Landroid/content/Context;

.field private final mName:Ljava/lang/String;

.field private final mPkg:Ljava/lang/String;

.field private final mResId:I

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 52
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-static {p1, p2}, Lcom/android/systemui/tuner/ShortcutParser;->getResId(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v2

    .line 52
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/tuner/ShortcutParser;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "resId"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    .line 70
    iput p4, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    .line 71
    iput-object p3, p0, Lcom/android/systemui/tuner/ShortcutParser;->mName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private static getResId(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 60
    .local v0, "i":Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 61
    .local v1, "resId":I
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.app.shortcuts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "android.app.shortcuts"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 64
    :cond_0
    return v1
.end method

.method private parseShortcut(Landroid/content/res/XmlResourceParser;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .locals 12
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    sget-object v2, Lcom/android/internal/R$styleable;->Shortcut:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 104
    .local v0, "sa":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    invoke-direct {v1}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;-><init>()V

    .line 106
    .local v1, "c":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 107
    .local v2, "enabled":Z
    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 108
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "id":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 110
    .local v7, "iconResId":I
    const/4 v8, 0x3

    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 112
    .local v6, "titleResId":I
    iget-object v9, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->pkg:Ljava/lang/String;

    .line 113
    iget-object v9, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    invoke-static {v9, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    .line 114
    iput-object v5, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->id:Ljava/lang/String;

    .line 115
    iget-object v9, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    .line 116
    iget-object v9, p0, Lcom/android/systemui/tuner/ShortcutParser;->mName:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->name:Ljava/lang/String;

    .line 118
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    if-eq v9, v8, :cond_3

    .line 119
    if-eq v10, v4, :cond_2

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "intent"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 123
    iget-object v9, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    invoke-static {v9, p1, v11}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 126
    :cond_3
    iget-object v4, v1, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_4

    move-object v3, v1

    nop

    :cond_4
    return-object v3
.end method


# virtual methods
.method public getShortcuts()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/tuner/ShortcutParser$Shortcut;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/tuner/ShortcutParser$Shortcut;>;"
    iget v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    if-eqz v1, :cond_4

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    .line 79
    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResources:Landroid/content/res/Resources;

    iget v2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 80
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/tuner/ShortcutParser;->mAttrs:Landroid/util/AttributeSet;

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    .line 83
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "shortcut"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-direct {p0, v1}, Lcom/android/systemui/tuner/ShortcutParser;->parseShortcut(Landroid/content/res/XmlResourceParser;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v2

    .line 88
    .local v2, "c":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    if-eqz v2, :cond_2

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v2    # "c":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    :cond_2
    goto :goto_0

    .line 95
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v3    # "type":I
    :cond_3
    goto :goto_1

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return-object v0
.end method
