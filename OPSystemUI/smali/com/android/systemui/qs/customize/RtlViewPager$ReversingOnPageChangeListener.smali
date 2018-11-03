.class Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;
.super Ljava/lang/Object;
.source "RtlViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingOnPageChangeListener"
.end annotation


# instance fields
.field private final mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/RtlViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/RtlViewPager;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 217
    iput-object p1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 219
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 252
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 253
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 225
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->getWidth()I

    move-result v0

    .line 226
    .local v0, "width":I
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$401(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 227
    .local v1, "adapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 228
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 229
    .local v2, "count":I
    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, p3

    .line 230
    .local v3, "remainingWidth":I
    :goto_0
    if-ge p1, v2, :cond_0

    if-lez v3, :cond_0

    .line 231
    add-int/lit8 p1, p1, 0x1

    .line 232
    int-to-float v4, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 234
    :cond_0
    sub-int v4, v2, p1

    add-int/lit8 p1, v4, -0x1

    .line 235
    neg-int p3, v3

    .line 236
    int-to-float v4, p3

    int-to-float v5, v0

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    mul-float/2addr v5, v6

    div-float p2, v4, v5

    .line 238
    .end local v2    # "count":I
    .end local v3    # "remainingWidth":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 239
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 243
    iget-object v0, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$601(Lcom/android/systemui/qs/customize/RtlViewPager;)Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 244
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->this$0:Lcom/android/systemui/qs/customize/RtlViewPager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/RtlViewPager;->access$500(Lcom/android/systemui/qs/customize/RtlViewPager;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x1

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/RtlViewPager$ReversingOnPageChangeListener;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 248
    return-void
.end method
