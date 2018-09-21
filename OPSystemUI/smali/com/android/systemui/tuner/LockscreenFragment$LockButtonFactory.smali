.class public Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;
.super Ljava/lang/Object;
.source "LockscreenFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockButtonFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionController$TunerFactory<",
        "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    .line 325
    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    .line 326
    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;"
        }
    .end annotation

    .line 335
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    .local v0, "buttonStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 337
    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object v1

    .line 339
    .local v1, "shortcut":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    if-eqz v1, :cond_0

    .line 340
    new-instance v2, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;-><init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V

    return-object v2

    .line 342
    .end local v1    # "shortcut":Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/tuner/LockscreenFragment;->getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 344
    .local v1, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_2

    .line 345
    new-instance v2, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    return-object v2

    .line 349
    .end local v1    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic create(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->create(Ljava/util/Map;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object p1

    return-object p1
.end method

.method public keys()[Ljava/lang/String;
    .locals 3

    .line 330
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method
