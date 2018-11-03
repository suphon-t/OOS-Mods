.class public Lcom/airbnb/lottie/model/content/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    }
.end annotation


# instance fields
.field private final maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field private final maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

.field private final opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;)V
    .locals 0
    .param p1, "maskMode"    # Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .param p2, "maskPath"    # Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .param p3, "opacity"    # Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 19
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    .line 20
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    .line 21
    return-void
.end method


# virtual methods
.method public getMaskMode()Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->maskMode:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method

.method public getMaskPath()Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->maskPath:Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    return-object v0
.end method

.method public getOpacity()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/Mask;->opacity:Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    return-object v0
.end method
