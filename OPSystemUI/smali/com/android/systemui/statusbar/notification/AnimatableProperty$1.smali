.class Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;
.super Landroid/util/FloatProperty;
.source "AnimatableProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$getter:Ljava/util/function/Function;

.field final synthetic val$setter:Ljava/util/function/BiConsumer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;->val$getter:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;->val$setter:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 52
    .local p1, "object":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;->val$getter:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 57
    .local p1, "object":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;->val$setter:Ljava/util/function/BiConsumer;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 48
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
