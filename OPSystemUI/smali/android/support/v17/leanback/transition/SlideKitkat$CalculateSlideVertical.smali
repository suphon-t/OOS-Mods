.class abstract Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlideVertical;
.super Ljava/lang/Object;
.source "SlideKitkat.java"

# interfaces
.implements Landroid/support/v17/leanback/transition/SlideKitkat$CalculateSlide;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/SlideKitkat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CalculateSlideVertical"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public getHere(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public getProperty()Landroid/util/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 89
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    return-object v0
.end method
