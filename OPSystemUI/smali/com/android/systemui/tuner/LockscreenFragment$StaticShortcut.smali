.class Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;
.super Lcom/android/systemui/tuner/LockscreenFragment$Item;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticShortcut"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExpando()Ljava/lang/Boolean;
    .locals 1

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    return-object v0
.end method
