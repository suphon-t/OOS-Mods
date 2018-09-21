.class Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;
.super Ljava/lang/Object;
.source "LockscreenFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutButton"
.end annotation


# instance fields
.field private final mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

.field private final mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/ShortcutParser$Shortcut;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shortcut"    # Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    .line 359
    new-instance v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    .line 360
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->isVisible:Z

    .line 361
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v2, p2, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 362
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v2, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v2, v2, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->contentDescription:Ljava/lang/CharSequence;

    .line 363
    nop

    .line 364
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 363
    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 365
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    new-instance v2, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v3, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v3, v3, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    iget-object v5, v5, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 366
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    iput-object v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->drawable:Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;->tint:Z

    .line 368
    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mIconState:Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton$IconState;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;->mShortcut:Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    iget-object v0, v0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->intent:Landroid/content/Intent;

    return-object v0
.end method
