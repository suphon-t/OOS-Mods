.class Landroid/support/v7/preference/PreferenceInflater;
.super Ljava/lang/Object;
.source "PreferenceInflater.java"


# static fields
.field private static final CONSTRUCTOR_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mDefaultPackages:[Ljava/lang/String;

.field private mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0, p2}, Landroid/support/v7/preference/PreferenceInflater;->init(Landroid/support/v7/preference/PreferenceManager;)V

    .line 62
    return-void
.end method

.method private createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefixes"    # [Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 222
    sget-object v0, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 225
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 228
    :try_start_0
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 229
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    .line 230
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_3

    array-length v4, p2

    if-nez v4, :cond_0

    goto :goto_2

    .line 233
    :cond_0
    const/4 v4, 0x0

    .line 234
    .local v4, "notFoundException":Ljava/lang/ClassNotFoundException;
    array-length v5, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .local v7, "prefix":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v8

    .line 237
    goto :goto_1

    .line 238
    :catch_0
    move-exception v8

    .line 239
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    move-object v4, v8

    .line 234
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 242
    :cond_1
    :goto_1
    if-nez v3, :cond_4

    .line 243
    if-nez v4, :cond_2

    .line 244
    :try_start_2
    new-instance v1, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_2
    throw v4

    .line 231
    .end local v4    # "notFoundException":Ljava/lang/ClassNotFoundException;
    :cond_3
    :goto_2
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 252
    :cond_4
    sget-object v4, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    move-object v0, v4

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 254
    sget-object v4, Landroid/support/v7/preference/PreferenceInflater;->CONSTRUCTOR_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 264
    :catch_1
    move-exception v1

    goto :goto_4

    .line 261
    :catch_2
    move-exception v1

    goto :goto_5

    .line 257
    :cond_5
    :goto_3
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 258
    .local v2, "args":[Ljava/lang/Object;
    aput-object p3, v2, v1

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 264
    .end local v2    # "args":[Ljava/lang/Object;
    :goto_4
    nop

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 267
    .local v2, "ie":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 268
    throw v2

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Landroid/view/InflateException;
    :goto_5
    nop

    .line 263
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    throw v1
.end method

.method private createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 292
    const/4 v0, -0x1

    const/16 v1, 0x2e

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 293
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/preference/PreferenceInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .local v0, "item":Landroid/support/v7/preference/Preference;
    goto :goto_0

    .line 295
    .end local v0    # "item":Landroid/support/v7/preference/Preference;
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .restart local v0    # "item":Landroid/support/v7/preference/Preference;
    :goto_0
    return-object v0

    .line 310
    .end local v0    # "item":Landroid/support/v7/preference/Preference;
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Error inflating class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 314
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 315
    throw v1

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Error inflating class (not found)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 308
    throw v1

    .line 300
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 301
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method private init(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 3
    .param p1, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;

    .line 65
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/support/v7/preference/Preference;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/support/v14/preference/SwitchPreference;

    .line 73
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 69
    invoke-virtual {p0, v0}, Landroid/support/v7/preference/PreferenceInflater;->setDefaultPackages([Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private onMergeRoots(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1
    .param p1, "givenRoot"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "xmlRoot"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 194
    if-nez p1, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mPreferenceManager:Landroid/support/v7/preference/PreferenceManager;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/PreferenceGroup;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 196
    return-object p2

    .line 198
    :cond_0
    return-object p1
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/support/v7/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 328
    .local v0, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 329
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_4

    :cond_0
    const/4 v1, 0x1

    if-eq v2, v1, :cond_4

    .line 331
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    .line 332
    goto :goto_0

    .line 335
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "name":Ljava/lang/String;
    const-string v3, "intent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, p3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v3, "intent":Landroid/content/Intent;
    nop

    .line 346
    nop

    .line 349
    invoke-virtual {p2, v3}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 350
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 342
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Error parsing preference"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 345
    .local v4, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4, v3}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 346
    throw v4

    .line 350
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    const-string v3, "extra"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "extra"

    .line 352
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 351
    invoke-virtual {v3, v4, p3, v5}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 354
    :try_start_1
    invoke-static {p1}, Landroid/support/v7/preference/PreferenceInflater;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    goto :goto_1

    .line 355
    :catch_1
    move-exception v3

    .line 356
    .restart local v3    # "e":Ljava/io/IOException;
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Error parsing preference"

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 358
    .restart local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4, v3}, Lorg/xmlpull/v1/XmlPullParserException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 359
    throw v4

    .line 362
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_3
    invoke-direct {p0, v1, p3}, Landroid/support/v7/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 363
    .local v3, "item":Landroid/support/v7/preference/Preference;
    move-object v4, p2

    check-cast v4, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addItemFromInflater(Landroid/support/v7/preference/Preference;)V

    .line 364
    invoke-direct {p0, p1, v3, p3}, Landroid/support/v7/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    .line 366
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "item":Landroid/support/v7/preference/Preference;
    :goto_1
    goto :goto_0

    .line 368
    :cond_4
    return-void
.end method

.method private static skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 375
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 376
    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 377
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 378
    :cond_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 103
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public inflate(ILandroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 118
    invoke-virtual {p0}, Landroid/support/v7/preference/PreferenceInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 120
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroid/support/v7/preference/PreferenceInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/Preference;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .line 146
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 148
    .local v1, "attrs":Landroid/util/AttributeSet;
    iget-object v2, p0, Landroid/support/v7/preference/PreferenceInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/preference/PreferenceInflater;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 156
    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 158
    :cond_1
    if-ne v2, v3, :cond_2

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Landroid/support/v7/preference/PreferenceInflater;->createItemFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 167
    .local v3, "xmlRoot":Landroid/support/v7/preference/Preference;
    move-object v4, v3

    check-cast v4, Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {p0, p2, v4}, Landroid/support/v7/preference/PreferenceInflater;->onMergeRoots(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v4

    .line 170
    .local v4, "result":Landroid/support/v7/preference/Preference;
    invoke-direct {p0, p1, v4, v1}, Landroid/support/v7/preference/PreferenceInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v2    # "type":I
    .end local v3    # "xmlRoot":Landroid/support/v7/preference/Preference;
    nop

    .line 183
    nop

    .line 186
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v4

    .line 159
    .end local v4    # "result":Landroid/support/v7/preference/Preference;
    .restart local v2    # "type":I
    :cond_2
    :try_start_3
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": No start tag found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    .end local v2    # "type":I
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Landroid/view/InflateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 182
    .local v3, "ex":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 183
    throw v3

    .line 174
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Landroid/view/InflateException;
    :catch_1
    move-exception v2

    .line 175
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/view/InflateException;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v3    # "ex":Landroid/view/InflateException;
    invoke-virtual {v3, v2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 177
    throw v3

    .line 172
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v2

    .line 173
    .local v2, "e":Landroid/view/InflateException;
    throw v2

    .line 187
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v2    # "e":Landroid/view/InflateException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/preference/PreferenceInflater;->createItem(Ljava/lang/String;[Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultPackages([Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # [Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceInflater;->mDefaultPackages:[Ljava/lang/String;

    .line 86
    return-void
.end method
