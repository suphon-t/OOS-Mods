.class Lcom/android/systemui/stackdivider/DividerHandleView$2;
.super Landroid/util/Property;
.source "DividerHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DividerHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/systemui/stackdivider/DividerHandleView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .line 55
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/stackdivider/DividerHandleView;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/stackdivider/DividerHandleView;

    .line 59
    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->access$100(Lcom/android/systemui/stackdivider/DividerHandleView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    check-cast p1, Lcom/android/systemui/stackdivider/DividerHandleView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerHandleView$2;->get(Lcom/android/systemui/stackdivider/DividerHandleView;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/systemui/stackdivider/DividerHandleView;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "object"    # Lcom/android/systemui/stackdivider/DividerHandleView;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 64
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/stackdivider/DividerHandleView;->access$102(Lcom/android/systemui/stackdivider/DividerHandleView;I)I

    .line 65
    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/DividerHandleView;->invalidate()V

    .line 66
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Lcom/android/systemui/stackdivider/DividerHandleView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerHandleView$2;->set(Lcom/android/systemui/stackdivider/DividerHandleView;Ljava/lang/Integer;)V

    return-void
.end method
