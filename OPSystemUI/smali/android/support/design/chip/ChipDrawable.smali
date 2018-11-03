.class public Landroid/support/design/chip/ChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ChipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/chip/ChipDrawable$Delegate;
    }
.end annotation


# static fields
.field private static final DEFAULT_STATE:[I


# instance fields
.field private alpha:I

.field private checkable:Z

.field private checkedIcon:Landroid/graphics/drawable/Drawable;

.field private checkedIconEnabled:Z

.field private chipBackgroundColor:Landroid/content/res/ColorStateList;

.field private chipCornerRadius:F

.field private chipEndPadding:F

.field private chipIcon:Landroid/graphics/drawable/Drawable;

.field private chipIconEnabled:Z

.field private chipIconSize:F

.field private chipMinHeight:F

.field private final chipPaint:Landroid/graphics/Paint;

.field private chipStartPadding:F

.field private chipStrokeColor:Landroid/content/res/ColorStateList;

.field private chipStrokeWidth:F

.field private chipText:Ljava/lang/CharSequence;

.field private chipTextWidth:F

.field private chipTextWidthDirty:Z

.field private closeIcon:Landroid/graphics/drawable/Drawable;

.field private closeIconEnabled:Z

.field private closeIconEndPadding:F

.field private closeIconSize:F

.field private closeIconStartPadding:F

.field private closeIconStateSet:[I

.field private closeIconTint:Landroid/content/res/ColorStateList;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private compatRippleColor:Landroid/content/res/ColorStateList;

.field private final context:Landroid/content/Context;

.field private currentChecked:Z

.field private currentChipBackgroundColor:I

.field private currentChipStrokeColor:I

.field private currentChipTextColor:I

.field private currentCompatRippleColor:I

.field private currentTint:I

.field private final debugPaint:Landroid/graphics/Paint;

.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/chip/ChipDrawable$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private hideMotionSpec:Landroid/support/design/animation/MotionSpec;

.field private iconEndPadding:F

.field private iconStartPadding:F

.field private final pointF:Landroid/graphics/PointF;

.field private final rectF:Landroid/graphics/RectF;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private showMotionSpec:Landroid/support/design/animation/MotionSpec;

.field private textAppearance:Landroid/support/design/resources/TextAppearance;

.field private textEndPadding:F

.field private final textPaint:Landroid/text/TextPaint;

.field private textStartPadding:F

.field private tint:Landroid/content/res/ColorStateList;

.field private tintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private tintMode:Landroid/graphics/PorterDuff$Mode;

.field private useCompatRipple:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 220
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    .line 221
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    .line 223
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    .line 225
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    .line 234
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 238
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 242
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 243
    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 298
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    .line 300
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 301
    iput-object v2, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 302
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 306
    :cond_0
    sget-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setState([I)Z

    .line 307
    sget-object v0, Landroid/support/design/chip/ChipDrawable;->DEFAULT_STATE:[I

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->setCloseIconState([I)Z

    .line 308
    return-void
.end method

.method private applyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1137
    if-eqz p1, :cond_2

    .line 1138
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1139
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 1140
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1141
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1143
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1144
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1147
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1149
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1150
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1154
    :cond_2
    :goto_0
    return-void
.end method

.method private calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 675
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 677
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    :cond_0
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    add-float/2addr v0, v1

    .line 680
    .local v0, "offsetFromStart":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 681
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 682
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 684
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 685
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 688
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 689
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 691
    .end local v0    # "offsetFromStart":F
    :cond_2
    return-void
.end method

.method private calculateChipIconWidth()F
    .locals 2

    .line 447
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 448
    :cond_1
    :goto_0
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    add-float/2addr v0, v1

    return v0
.end method

.method private calculateChipTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 740
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 742
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 743
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 744
    .local v0, "offsetFromStart":F
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v1, v2

    .line 746
    .local v1, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 747
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 748
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 750
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 751
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    iput v2, p2, Landroid/graphics/RectF;->right:F

    .line 756
    :goto_0
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 757
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->bottom:F

    .line 759
    .end local v0    # "offsetFromStart":F
    .end local v1    # "offsetFromEnd":F
    :cond_1
    return-void
.end method

.method private calculateChipTextCenterFromBaseline()F
    .locals 2

    .line 731
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 732
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->fontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private calculateChipTextOrigin(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "pointF"    # Landroid/graphics/PointF;

    .line 698
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 699
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 701
    .local v0, "align":Landroid/graphics/Paint$Align;
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 702
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v1, v2

    .line 704
    .local v1, "offsetFromStart":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    if-nez v2, :cond_0

    .line 705
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 706
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 708
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iput v2, p2, Landroid/graphics/PointF;->x:F

    .line 709
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 712
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipTextCenterFromBaseline()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/PointF;->y:F

    .line 715
    .end local v1    # "offsetFromStart":F
    :cond_1
    return-object v0
.end method

.method private calculateChipTextWidth(Ljava/lang/CharSequence;)F
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 465
    if-nez p1, :cond_0

    .line 466
    const/4 v0, 0x0

    return v0

    .line 469
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    return v0
.end method

.method private calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 785
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 787
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 788
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 795
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 796
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 798
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 801
    .end local v0    # "offsetFromEnd":F
    :cond_1
    :goto_0
    return-void
.end method

.method private calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 766
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 768
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    .line 771
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 772
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 773
    iget v1, p2, Landroid/graphics/RectF;->right:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 775
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 776
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 779
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 780
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 782
    .end local v0    # "offsetFromEnd":F
    :cond_1
    return-void
.end method

.method private calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/RectF;

    .line 804
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 806
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 814
    .local v0, "offsetFromEnd":F
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 815
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 816
    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 818
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 819
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 822
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 823
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 825
    .end local v0    # "offsetFromEnd":F
    :cond_1
    return-void
.end method

.method private calculateCloseIconWidth()F
    .locals 2

    .line 477
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    add-float/2addr v0, v1

    return v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private canShowCheckedIcon()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/design/chip/ChipDrawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 249
    new-instance v0, Landroid/support/design/chip/ChipDrawable;

    invoke-direct {v0, p0}, Landroid/support/design/chip/ChipDrawable;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "chip":Landroid/support/design/chip/ChipDrawable;
    invoke-direct {v0, p1, p2, p3}, Landroid/support/design/chip/ChipDrawable;->loadFromAttributes(Landroid/util/AttributeSet;II)V

    .line 251
    return-object v0
.end method

.method private drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 578
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 580
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 581
    .local v0, "tx":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 583
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 585
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 586
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 588
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 590
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method private drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 527
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 528
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 529
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 530
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 531
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 532
    return-void
.end method

.method private drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 563
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 565
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 566
    .local v0, "tx":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 568
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 570
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 571
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 573
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 575
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method private drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 539
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 540
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 541
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 542
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getTintColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 543
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v6, v3

    sub-float/2addr v5, v6

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 550
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 551
    .local v0, "strokeCornerRadius":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 553
    .end local v0    # "strokeCornerRadius":F
    :cond_0
    return-void
.end method

.method private drawChipText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 594
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipTextOrigin(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 597
    .local v0, "align":Landroid/graphics/Paint$Align;
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Landroid/support/design/chip/ChipDrawable;->calculateChipTextBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 599
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 601
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2, v3}, Landroid/support/design/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 603
    :cond_0
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 605
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getChipTextWidth()F

    move-result v1

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 606
    .local v1, "clip":Z
    :goto_0
    const/4 v2, 0x0

    .line 607
    .local v2, "saveCount":I
    if-eqz v1, :cond_2

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 609
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 611
    :cond_2
    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->pointF:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 612
    if-eqz v1, :cond_3

    .line 613
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 616
    .end local v0    # "align":Landroid/graphics/Paint$Align;
    .end local v1    # "clip":Z
    .end local v2    # "saveCount":I
    :cond_3
    return-void
.end method

.method private drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 619
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 621
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 622
    .local v0, "tx":F
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 624
    .local v1, "ty":F
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 627
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 629
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    :cond_0
    return-void
.end method

.method private drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 556
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 558
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 559
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 560
    return-void
.end method

.method private drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 634
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 641
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 643
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 647
    :cond_1
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 648
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 649
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    .line 648
    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 653
    :cond_2
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 655
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 659
    :cond_3
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 661
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 664
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 666
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 668
    :cond_4
    return-void
.end method

.method private getChipTextWidth()F
    .locals 1

    .line 454
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidthDirty:Z

    if-nez v0, :cond_0

    .line 455
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidth:F

    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->calculateChipTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidth:F

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 461
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidth:F

    return v0
.end method

.method private getTintColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1162
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object v0
.end method

.method private static hasState([II)Z
    .locals 4
    .param p0, "stateSet"    # [I
    .param p1, "state"    # I

    .line 1172
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1173
    return v0

    .line 1176
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 1177
    .local v3, "s":I
    if-ne v3, p1, :cond_1

    .line 1178
    const/4 v0, 0x1

    return v0

    .line 1176
    .end local v3    # "s":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1181
    :cond_2
    return v0
.end method

.method private static isStateful(Landroid/content/res/ColorStateList;)Z
    .locals 1
    .param p0, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 965
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isStateful(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 969
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isStateful(Landroid/support/design/resources/TextAppearance;)Z
    .locals 1
    .param p0, "textAppearance"    # Landroid/support/design/resources/TextAppearance;

    .line 973
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    .line 975
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 973
    :goto_0
    return v0
.end method

.method private loadFromAttributes(Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 312
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget-object v1, Landroid/support/design/chip/R$styleable;->ChipDrawable:[I

    .line 313
    invoke-static {v0, p1, v1, p2, p3}, Landroid/support/design/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 316
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v2, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipBackgroundColor:I

    .line 317
    invoke-static {v1, v0, v2}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 316
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipBackgroundColor(Landroid/content/res/ColorStateList;)V

    .line 319
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipMinHeight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipMinHeight(F)V

    .line 320
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipCornerRadius(F)V

    .line 321
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipStrokeColor:I

    .line 322
    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 321
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 323
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipStrokeWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipStrokeWidth(F)V

    .line 324
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/chip/R$styleable;->ChipDrawable_rippleColor:I

    .line 325
    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 324
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 327
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/chip/R$styleable;->ChipDrawable_android_textAppearance:I

    .line 329
    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getTextAppearance(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/resources/TextAppearance;

    move-result-object v1

    .line 328
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setTextAppearance(Landroid/support/design/resources/TextAppearance;)V

    .line 332
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipIconEnabled:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipIconEnabled(Z)V

    .line 333
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipIcon:I

    invoke-static {v1, v0, v4}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipIcon(Landroid/graphics/drawable/Drawable;)V

    .line 334
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipIconSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipIconSize(F)V

    .line 336
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_closeIconEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEnabled(Z)V

    .line 337
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/chip/R$styleable;->ChipDrawable_closeIcon:I

    invoke-static {v1, v0, v4}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIcon(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v4, Landroid/support/design/chip/R$styleable;->ChipDrawable_closeIconTint:I

    .line 339
    invoke-static {v1, v0, v4}, Landroid/support/design/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconTint(Landroid/content/res/ColorStateList;)V

    .line 340
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_closeIconSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconSize(F)V

    .line 342
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_android_checkable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCheckable(Z)V

    .line 343
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_checkedIconEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIconEnabled(Z)V

    .line 344
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/chip/R$styleable;->ChipDrawable_checkedIcon:I

    invoke-static {v1, v0, v3}, Landroid/support/design/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCheckedIcon(Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/chip/R$styleable;->ChipDrawable_showMotionSpec:I

    .line 347
    invoke-static {v1, v0, v3}, Landroid/support/design/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v1

    .line 346
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 348
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    sget v3, Landroid/support/design/chip/R$styleable;->ChipDrawable_hideMotionSpec:I

    .line 349
    invoke-static {v1, v0, v3}, Landroid/support/design/animation/MotionSpec;->createFromAttribute(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/support/design/animation/MotionSpec;

    move-result-object v1

    .line 348
    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V

    .line 351
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipStartPadding(F)V

    .line 352
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_iconStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setIconStartPadding(F)V

    .line 353
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_iconEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setIconEndPadding(F)V

    .line 354
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_textStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setTextStartPadding(F)V

    .line 355
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_textEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setTextEndPadding(F)V

    .line 356
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_closeIconStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconStartPadding(F)V

    .line 357
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_closeIconEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setCloseIconEndPadding(F)V

    .line 358
    sget v1, Landroid/support/design/chip/R$styleable;->ChipDrawable_chipEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/chip/ChipDrawable;->setChipEndPadding(F)V

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    return-void
.end method

.method private onStateChange([I[I)Z
    .locals 11
    .param p1, "chipState"    # [I
    .param p2, "closeIconState"    # [I

    .line 885
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 886
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    .line 888
    .local v1, "sizeChanged":Z
    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 890
    invoke-virtual {v2, p1, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 892
    .local v2, "newChipBackgroundColor":I
    :goto_0
    iget v4, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    if-eq v4, v2, :cond_1

    .line 893
    iput v2, p0, Landroid/support/design/chip/ChipDrawable;->currentChipBackgroundColor:I

    .line 894
    const/4 v0, 0x1

    .line 897
    :cond_1
    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 899
    invoke-virtual {v4, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v3

    .line 901
    .local v4, "newChipStrokeColor":I
    :goto_1
    iget v5, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    if-eq v5, v4, :cond_3

    .line 902
    iput v4, p0, Landroid/support/design/chip/ChipDrawable;->currentChipStrokeColor:I

    .line 903
    const/4 v0, 0x1

    .line 906
    :cond_3
    iget-object v5, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    iget v6, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 908
    invoke-virtual {v5, p1, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    goto :goto_2

    :cond_4
    move v5, v3

    .line 910
    .local v5, "newCompatRippleColor":I
    :goto_2
    iget v6, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    if-eq v6, v5, :cond_5

    .line 911
    iput v5, p0, Landroid/support/design/chip/ChipDrawable;->currentCompatRippleColor:I

    .line 912
    iget-boolean v6, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v6, :cond_5

    .line 913
    const/4 v0, 0x1

    .line 917
    :cond_5
    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v6, v6, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    iget-object v6, v6, Landroid/support/design/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->currentChipTextColor:I

    .line 919
    invoke-virtual {v6, p1, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    goto :goto_3

    :cond_6
    move v6, v3

    .line 921
    .local v6, "newChipTextColor":I
    :goto_3
    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->currentChipTextColor:I

    if-eq v7, v6, :cond_7

    .line 922
    iput v6, p0, Landroid/support/design/chip/ChipDrawable;->currentChipTextColor:I

    .line 923
    const/4 v0, 0x1

    .line 926
    :cond_7
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v7

    const v8, 0x10100a0

    invoke-static {v7, v8}, Landroid/support/design/chip/ChipDrawable;->hasState([II)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    move v7, v3

    .line 927
    .local v7, "newChecked":Z
    :goto_4
    iget-boolean v8, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eq v8, v7, :cond_9

    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_9

    .line 928
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v8

    .line 929
    .local v8, "oldChipIconWidth":F
    iput-boolean v7, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    .line 930
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v9

    .line 931
    .local v9, "newChipIconWidth":F
    const/4 v0, 0x1

    .line 933
    cmpl-float v10, v8, v9

    if-eqz v10, :cond_9

    .line 934
    const/4 v1, 0x1

    .line 938
    .end local v8    # "oldChipIconWidth":F
    .end local v9    # "newChipIconWidth":F
    :cond_9
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v8, :cond_a

    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget v8, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    invoke-virtual {v3, p1, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    nop

    .line 939
    .local v3, "newTint":I
    :cond_a
    iget v8, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    if-eq v8, v3, :cond_b

    .line 940
    iput v3, p0, Landroid/support/design/chip/ChipDrawable;->currentTint:I

    .line 941
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    iget-object v9, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v8, v9}, Landroid/support/design/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v8

    iput-object v8, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 942
    const/4 v0, 0x1

    .line 945
    :cond_b
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 946
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 948
    :cond_c
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 949
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 951
    :cond_d
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 952
    iget-object v8, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v8

    or-int/2addr v0, v8

    .line 955
    :cond_e
    if-eqz v0, :cond_f

    .line 956
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 958
    :cond_f
    if-eqz v1, :cond_10

    .line 959
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 961
    :cond_10
    return v0
.end method

.method private showsCheckedIcon()Z
    .locals 1

    .line 432
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showsChipIcon()Z
    .locals 1

    .line 427
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showsCloseIcon()Z
    .locals 1

    .line 437
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1130
    if-eqz p1, :cond_0

    .line 1131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1133
    :cond_0
    return-void
.end method

.method private updateCompatRippleColor()V
    .locals 1

    .line 1166
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1167
    invoke-static {v0}, Landroid/support/design/ripple/RippleUtils;->convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 1168
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 485
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 486
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    const/4 v1, 0x0

    .line 491
    .local v1, "saveCount":I
    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 492
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v2

    iget v9, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 493
    move-object v4, p1

    invoke-static/range {v4 .. v9}, Landroid/support/design/canvas/CanvasCompat;->saveLayerAlpha(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 498
    :cond_1
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 501
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipStroke(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 504
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCompatRipple(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 507
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 510
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCheckedIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 513
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawChipText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 516
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawCloseIcon(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 519
    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 521
    iget v2, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    if-ge v2, v3, :cond_2

    .line 522
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 524
    :cond_2
    return-void

    .line 487
    .end local v1    # "saveCount":I
    :cond_3
    :goto_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1053
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    return v0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 1

    .line 1293
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1440
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCloseIconState()[I
    .locals 1

    .line 871
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    return-object v0
.end method

.method public getCloseIconTouchBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 403
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconTouchBounds(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 404
    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1067
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 422
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 409
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    .line 411
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    add-float/2addr v0, v1

    .line 413
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->getChipTextWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    add-float/2addr v0, v1

    .line 415
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 409
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 1089
    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1, "outline"    # Landroid/graphics/Outline;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1095
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1096
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1097
    iget v1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    .line 1099
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1102
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 1103
    return-void
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1276
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1107
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1108
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 1109
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public isCheckable()Z
    .locals 1

    .line 1506
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    return v0
.end method

.method public isCloseIconStateful()Z
    .locals 1

    .line 851
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 835
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 836
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->compatRippleColor:Landroid/content/res/ColorStateList;

    .line 837
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    .line 838
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/support/design/resources/TextAppearance;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 839
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->canShowCheckedIcon()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 840
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 841
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 842
    invoke-static {v0}, Landroid/support/design/chip/ChipDrawable;->isStateful(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 835
    :goto_1
    return v0
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 981
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 983
    .local v0, "invalidate":Z
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 986
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 989
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 990
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 993
    :cond_2
    if-eqz v0, :cond_3

    .line 994
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 996
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected onLevelChange(I)Z
    .locals 2
    .param p1, "level"    # I

    .line 1001
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1003
    .local v0, "invalidate":Z
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1006
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1009
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1010
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1013
    :cond_2
    if-eqz v0, :cond_3

    .line 1014
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1016
    :cond_3
    return v0
.end method

.method protected onSizeChange()V
    .locals 1

    .line 384
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/chip/ChipDrawable$Delegate;

    .line 385
    .local v0, "delegate":Landroid/support/design/chip/ChipDrawable$Delegate;
    if-eqz v0, :cond_0

    .line 386
    invoke-interface {v0}, Landroid/support/design/chip/ChipDrawable$Delegate;->onChipDrawableSizeChange()V

    .line 388
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 876
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCloseIconState()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 1115
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1116
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 1117
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1119
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 1045
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    if-eq v0, p1, :cond_0

    .line 1046
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->alpha:I

    .line 1047
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1049
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 3
    .param p1, "checkable"    # Z

    .line 1514
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    if-eq v0, p1, :cond_1

    .line 1515
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->checkable:Z

    .line 1517
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1518
    .local v0, "oldChipIconWidth":F
    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    if-eqz v1, :cond_0

    .line 1519
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/chip/ChipDrawable;->currentChecked:Z

    .line 1521
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1523
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1524
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    .line 1525
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1528
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_1
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "checkedIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1568
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1569
    .local v0, "oldCheckedIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_0

    .line 1570
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1571
    .local v1, "oldChipIconWidth":F
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    .line 1572
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    .line 1574
    .local v2, "newChipIconWidth":F
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1575
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1577
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1578
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    .line 1579
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1582
    .end local v1    # "oldChipIconWidth":F
    .end local v2    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 4
    .param p1, "checkedIconEnabled"    # Z

    .line 1539
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1540
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v0

    .line 1541
    .local v0, "oldShowsCheckedIcon":Z
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIconEnabled:Z

    .line 1542
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    .line 1544
    .local v1, "newShowsCheckedIcon":Z
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1545
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1546
    if-eqz v1, :cond_1

    .line 1547
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1549
    :cond_1
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1552
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1553
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1556
    .end local v0    # "oldShowsCheckedIcon":Z
    .end local v1    # "newShowsCheckedIcon":Z
    .end local v2    # "changed":Z
    :cond_2
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "chipBackgroundColor"    # Landroid/content/res/ColorStateList;

    .line 1203
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1204
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipBackgroundColor:Landroid/content/res/ColorStateList;

    .line 1205
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1207
    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .param p1, "chipCornerRadius"    # F

    .line 1234
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1235
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipCornerRadius:F

    .line 1236
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1238
    :cond_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1
    .param p1, "chipEndPadding"    # F

    .line 1745
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1746
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipEndPadding:F

    .line 1747
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1748
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1750
    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "chipIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1371
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1372
    .local v0, "oldChipIcon":Landroid/graphics/drawable/Drawable;
    if-eq v0, p1, :cond_1

    .line 1373
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1374
    .local v1, "oldChipIconWidth":F
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    .line 1375
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v2

    .line 1377
    .local v2, "newChipIconWidth":F
    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1378
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1379
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1382
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1383
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    .line 1384
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1387
    .end local v1    # "oldChipIconWidth":F
    .end local v2    # "newChipIconWidth":F
    :cond_1
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 4
    .param p1, "chipIconEnabled"    # Z

    .line 1342
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1343
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v0

    .line 1344
    .local v0, "oldShowsChipIcon":Z
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconEnabled:Z

    .line 1345
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    .line 1347
    .local v1, "newShowsChipIcon":Z
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1348
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1349
    if-eqz v1, :cond_1

    .line 1350
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1352
    :cond_1
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1355
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1356
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1359
    .end local v0    # "oldShowsChipIcon":Z
    .end local v1    # "newShowsChipIcon":Z
    .end local v2    # "changed":Z
    :cond_2
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 3
    .param p1, "chipIconSize"    # F

    .line 1398
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1399
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1400
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipIconSize:F

    .line 1401
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1403
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1404
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1405
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1408
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1
    .param p1, "chipMinHeight"    # F

    .line 1218
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1219
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipMinHeight:F

    .line 1220
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1221
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1223
    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1
    .param p1, "chipStartPadding"    # F

    .line 1619
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1620
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStartPadding:F

    .line 1621
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1622
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1624
    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "chipStrokeColor"    # Landroid/content/res/ColorStateList;

    .line 1250
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1251
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeColor:Landroid/content/res/ColorStateList;

    .line 1252
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1254
    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1
    .param p1, "chipStrokeWidth"    # F

    .line 1265
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1266
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->chipStrokeWidth:F

    .line 1268
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1270
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1272
    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "chipText"    # Ljava/lang/CharSequence;

    .line 1301
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1302
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->chipText:Ljava/lang/CharSequence;

    .line 1303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 1305
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1306
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1308
    :cond_0
    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "closeIcon"    # Landroid/graphics/drawable/Drawable;

    .line 1448
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1449
    .local v0, "oldCloseIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eq v0, p1, :cond_3

    .line 1450
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v2

    .line 1451
    .local v2, "oldCloseIconWidth":F
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    :cond_1
    iput-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    .line 1452
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateCloseIconWidth()F

    move-result v1

    .line 1454
    .local v1, "newCloseIconWidth":F
    invoke-direct {p0, v0}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1455
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1456
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1459
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1460
    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    .line 1461
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1464
    .end local v1    # "newCloseIconWidth":F
    .end local v2    # "oldCloseIconWidth":F
    :cond_3
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 4
    .param p1, "closeIconEnabled"    # Z

    .line 1419
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    if-eq v0, p1, :cond_2

    .line 1420
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    .line 1421
    .local v0, "oldShowsCloseIcon":Z
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEnabled:Z

    .line 1422
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    .line 1424
    .local v1, "newShowsCloseIcon":Z
    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1425
    .local v2, "changed":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 1426
    if-eqz v1, :cond_1

    .line 1427
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->applyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1429
    :cond_1
    iget-object v3, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3}, Landroid/support/design/chip/ChipDrawable;->unapplyChildDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1432
    :goto_1
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1433
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1436
    .end local v0    # "oldShowsCloseIcon":Z
    .end local v1    # "newShowsCloseIcon":Z
    .end local v2    # "changed":Z
    :cond_2
    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1
    .param p1, "closeIconEndPadding"    # F

    .line 1727
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1728
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconEndPadding:F

    .line 1729
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1730
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1734
    :cond_0
    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1
    .param p1, "closeIconSize"    # F

    .line 1496
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1497
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconSize:F

    .line 1498
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1499
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1503
    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1
    .param p1, "closeIconStartPadding"    # F

    .line 1709
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1710
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStartPadding:F

    .line 1711
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1712
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1716
    :cond_0
    return-void
.end method

.method public setCloseIconState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 859
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconStateSet:[I

    .line 861
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I[I)Z

    move-result v0

    return v0

    .line 865
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "closeIconTint"    # Landroid/content/res/ColorStateList;

    .line 1476
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1477
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->closeIconTint:Landroid/content/res/ColorStateList;

    .line 1479
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1483
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1485
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 1058
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1059
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1060
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1062
    :cond_0
    return-void
.end method

.method public setDelegate(Landroid/support/design/chip/ChipDrawable$Delegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/support/design/chip/ChipDrawable$Delegate;

    .line 379
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->delegate:Ljava/lang/ref/WeakReference;

    .line 380
    return-void
.end method

.method public setHideMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0
    .param p1, "hideMotionSpec"    # Landroid/support/design/animation/MotionSpec;

    .line 1607
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->hideMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 1608
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 3
    .param p1, "iconEndPadding"    # F

    .line 1656
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1657
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1658
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->iconEndPadding:F

    .line 1659
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1661
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1662
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1663
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1666
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 3
    .param p1, "iconStartPadding"    # F

    .line 1635
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1636
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v0

    .line 1637
    .local v0, "oldChipIconWidth":F
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->iconStartPadding:F

    .line 1638
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->calculateChipIconWidth()F

    move-result v1

    .line 1640
    .local v1, "newChipIconWidth":F
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1641
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 1642
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1645
    .end local v0    # "oldChipIconWidth":F
    .end local v1    # "newChipIconWidth":F
    :cond_0
    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "rippleColor"    # Landroid/content/res/ColorStateList;

    .line 1284
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1285
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->rippleColor:Landroid/content/res/ColorStateList;

    .line 1286
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 1287
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1289
    :cond_0
    return-void
.end method

.method public setShowMotionSpec(Landroid/support/design/animation/MotionSpec;)V
    .locals 0
    .param p1, "showMotionSpec"    # Landroid/support/design/animation/MotionSpec;

    .line 1594
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->showMotionSpec:Landroid/support/design/animation/MotionSpec;

    .line 1595
    return-void
.end method

.method public setTextAppearance(Landroid/support/design/resources/TextAppearance;)V
    .locals 2
    .param p1, "textAppearance"    # Landroid/support/design/resources/TextAppearance;

    .line 1320
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    if-eq v0, p1, :cond_1

    .line 1321
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->textAppearance:Landroid/support/design/resources/TextAppearance;

    .line 1323
    if-eqz p1, :cond_0

    .line 1324
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->context:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1}, Landroid/support/design/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 1325
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->chipTextWidthDirty:Z

    .line 1328
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1329
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1331
    :cond_1
    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1
    .param p1, "textEndPadding"    # F

    .line 1693
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1694
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->textEndPadding:F

    .line 1695
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1696
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1698
    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1
    .param p1, "textStartPadding"    # F

    .line 1677
    iget v0, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1678
    iput p1, p0, Landroid/support/design/chip/ChipDrawable;->textStartPadding:F

    .line 1679
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1680
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->onSizeChange()V

    .line 1682
    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 1072
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1073
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 1074
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 1076
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 1080
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1081
    iput-object p1, p0, Landroid/support/design/chip/ChipDrawable;->tintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1082
    iget-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tint:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Landroid/support/design/drawable/DrawableUtils;->updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/chip/ChipDrawable;->tintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 1083
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1085
    :cond_0
    return-void
.end method

.method public setUseCompatRipple(Z)V
    .locals 1
    .param p1, "useCompatRipple"    # Z

    .line 365
    iget-boolean v0, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    if-eq v0, p1, :cond_0

    .line 366
    iput-boolean p1, p0, Landroid/support/design/chip/ChipDrawable;->useCompatRipple:Z

    .line 367
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->updateCompatRippleColor()V

    .line 368
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/chip/ChipDrawable;->onStateChange([I)Z

    .line 370
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 1021
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 1023
    .local v0, "invalidate":Z
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsChipIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->chipIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1026
    :cond_0
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCheckedIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1027
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->checkedIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1029
    :cond_1
    invoke-direct {p0}, Landroid/support/design/chip/ChipDrawable;->showsCloseIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1030
    iget-object v1, p0, Landroid/support/design/chip/ChipDrawable;->closeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1033
    :cond_2
    if-eqz v0, :cond_3

    .line 1034
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->invalidateSelf()V

    .line 1036
    :cond_3
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 1123
    invoke-virtual {p0}, Landroid/support/design/chip/ChipDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1124
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 1125
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1127
    :cond_0
    return-void
.end method
