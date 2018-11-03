.class Lcom/android/systemui/statusbar/stack/ViewState$3;
.super Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.source "ViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimationEndTag()I
    .locals 1

    .line 100
    const v0, 0x7f0a0382

    return v0
.end method

.method public getAnimationStartTag()I
    .locals 1

    .line 95
    const v0, 0x7f0a0383

    return v0
.end method

.method public getAnimatorTag()I
    .locals 1

    .line 105
    const v0, 0x7f0a0384

    return v0
.end method

.method public getProperty()Landroid/util/Property;
    .locals 1

    .line 110
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    return-object v0
.end method
