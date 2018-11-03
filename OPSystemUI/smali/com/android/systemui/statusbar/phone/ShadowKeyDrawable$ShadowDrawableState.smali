.class Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ShadowKeyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShadowDrawableState"
.end annotation


# instance fields
.field mBaseHeight:I

.field mBaseWidth:I

.field mChangingConfigurations:I

.field mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mLastDrawnBitmap:Landroid/graphics/Bitmap;

.field mRotateDegrees:F

.field mShadowColor:I

.field mShadowOffsetX:I

.field mShadowOffsetY:I

.field mShadowSize:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$1;

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;-><init>()V

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 1

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, v1}, Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/phone/ShadowKeyDrawable$1;)V

    return-object v0
.end method
