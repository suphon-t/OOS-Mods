.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;
.super Ljava/lang/Object;
.source "NavigationBarGuide.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpInt2:[I

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->mTmpInt2:[I

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 6
    .param p1, "inoutInfo"    # Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->mTmpInt2:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 217
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 219
    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->mTmpInt2:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->mTmpInt2:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->mTmpInt2:[I

    aget v2, v5, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 222
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->mTmpInt2:[I

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$2;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    .line 223
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 219
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Region;->set(IIII)Z

    .line 224
    return-void
.end method
