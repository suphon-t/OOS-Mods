.class Lcom/android/systemui/qs/customize/QSEditViewPager$1;
.super Ljava/lang/Object;
.source "QSEditViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSEditViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSEditViewPager;

    .line 15
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 29
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->access$000(Lcom/android/systemui/qs/customize/QSEditViewPager;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditViewPager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->access$000(Lcom/android/systemui/qs/customize/QSEditViewPager;)Lcom/android/systemui/qs/PageIndicator;

    move-result-object v0

    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 25
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .line 18
    return-void
.end method
