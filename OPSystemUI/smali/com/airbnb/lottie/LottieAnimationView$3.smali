.class Lcom/airbnb/lottie/LottieAnimationView$3;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic val$rawRes:I


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/airbnb/lottie/LottieAnimationView;

    .line 366
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$3;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lcom/airbnb/lottie/LottieAnimationView$3;->val$rawRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .line 368
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v0

    iget v1, p0, Lcom/airbnb/lottie/LottieAnimationView$3;->val$rawRes:I

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(ILcom/airbnb/lottie/LottieComposition;)V

    .line 369
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 366
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$3;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
