.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationEvent"
.end annotation


# static fields
.field static FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field static LENGTHS:[I


# instance fields
.field final animationType:I

.field final changingView:Landroid/view/View;

.field darkAnimationOriginIndex:I

.field final eventStartTime:J

.field final filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field headsUpFromBottom:Z

.field final length:J

.field viewAfterChangingView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4906
    const/16 v0, 0x15

    new-array v1, v0, [Lcom/android/systemui/statusbar/stack/AnimationFilter;

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4910
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4911
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4912
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4913
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4914
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4915
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4919
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4920
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4921
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4922
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4923
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4924
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4928
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4929
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4930
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4931
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4932
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4933
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4937
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4938
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4939
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4940
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4941
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4942
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4946
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4950
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4951
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4955
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4959
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4963
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4964
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4965
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4966
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4967
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4968
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4975
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4976
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4977
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4978
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4979
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4980
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4981
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4985
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4989
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4990
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4991
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4992
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4993
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 4997
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4998
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 4999
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5000
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5001
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5002
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5006
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5007
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5008
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5009
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5010
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5014
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5015
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5016
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5017
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5018
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5019
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5023
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5024
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5025
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5026
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5027
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5028
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5032
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5033
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5034
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5035
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5036
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5040
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5041
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateShadowAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5042
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5043
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5044
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5045
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5046
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5047
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5048
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5052
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5053
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    .line 5057
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    .line 5058
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 5061
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1d0
        0x1d0
        0x168
        0x168
        0x168
        0x168
        0xdc
        0xdc
        0x168
        0x1f4
        0x1c0
        0x168
        0x168
        0x168
        0x226
        0x12c
        0x12c
        0x168
        0x168
        0x226
        0x113
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 5162
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v0, v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    .line 5163
    return-void
.end method

.method constructor <init>(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "length"    # J

    .line 5170
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->FILTERS:[Lcom/android/systemui/statusbar/stack/AnimationFilter;

    aget-object v6, v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJLcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 5171
    return-void
.end method

.method constructor <init>(Landroid/view/View;IJLcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "length"    # J
    .param p5, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 5173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5174
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->eventStartTime:J

    .line 5175
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    .line 5176
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 5177
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    .line 5178
    iput-object p5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 5179
    return-void
.end method

.method constructor <init>(Landroid/view/View;ILcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I
    .param p3, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 5166
    sget-object v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->LENGTHS:[I

    aget v0, v0, p2

    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJLcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 5167
    return-void
.end method

.method static combineLength(Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)J"
        }
    .end annotation

    .line 5189
    .local p0, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const-wide/16 v0, 0x0

    .line 5190
    .local v0, "length":J
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5191
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 5192
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 5193
    .local v4, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-wide v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5194
    iget v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 5195
    iget-wide v5, v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->length:J

    return-wide v5

    .line 5191
    .end local v4    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5198
    .end local v3    # "i":I
    :cond_1
    return-wide v0
.end method
