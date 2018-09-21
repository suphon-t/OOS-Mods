.class Lcom/android/systemui/statusbar/StatusBarIconView$2;
.super Landroid/util/FloatProperty;
.source "StatusBarIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/systemui/statusbar/StatusBarIconView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/statusbar/StatusBarIconView;)Ljava/lang/Float;
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 106
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getDotAppearAmount()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView$2;->get(Lcom/android/systemui/statusbar/StatusBarIconView;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/systemui/statusbar/StatusBarIconView;F)V
    .locals 0
    .param p1, "object"    # Lcom/android/systemui/statusbar/StatusBarIconView;
    .param p2, "value"    # F

    .line 101
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDotAppearAmount(F)V

    .line 102
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 97
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarIconView$2;->setValue(Lcom/android/systemui/statusbar/StatusBarIconView;F)V

    return-void
.end method
