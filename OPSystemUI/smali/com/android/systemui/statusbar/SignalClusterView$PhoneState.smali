.class Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
.super Ljava/lang/Object;
.source "SignalClusterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/SignalClusterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneState"
.end annotation


# instance fields
.field public mActivityIn:Z

.field public mActivityOut:Z

.field private mDataActivity:Landroid/widget/ImageView;

.field private mDataActivityId:I

.field private mDisabled:Z

.field private mLastMobileStrengthId:I

.field private mLastMobileTypeId:I

.field private mMobile:Landroid/widget/ImageView;

.field private mMobileActivityIn:Landroid/widget/ImageView;

.field private mMobileActivityOut:Landroid/widget/ImageView;

.field private mMobileDataConnected:Z

.field private mMobileDescription:Ljava/lang/String;

.field private mMobileGroup:Landroid/view/ViewGroup;

.field private mMobileInOut:Landroid/widget/ImageView;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileRoamingSpace:Landroid/view/View;

.field private mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

.field private mMobileSingleGroup:Landroid/view/ViewGroup;

.field private mMobileStackedGroup:Landroid/view/ViewGroup;

.field private mMobileStrengthId:I

.field private mMobileType:Landroid/widget/ImageView;

.field private mMobileTypeDescription:Ljava/lang/String;

.field private mMobileTypeId:I

.field private mMobileVisible:Z

.field private mNoSim:Z

.field private mSlotIndex:I

.field private mStackedData:Landroid/widget/ImageView;

.field private mStackedDataId:I

.field private mStackedVoice:Landroid/widget/ImageView;

.field private mStackedVoiceId:I

.field private final mSubId:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;IILandroid/content/Context;)V
    .locals 2
    .param p2, "subId"    # I
    .param p3, "slotIndex"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 932
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 903
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    .line 904
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 905
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 918
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    .line 919
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    .line 926
    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    .line 927
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    .line 928
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNoSim:Z

    .line 934
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    .line 935
    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2000(Lcom/android/systemui/statusbar/SignalClusterView;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    .line 936
    invoke-static {p1}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2100(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    if-eqz v0, :cond_1

    .line 937
    :cond_0
    const v0, 0x7f0805e5

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    .line 938
    invoke-static {p1}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2200(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    .line 939
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNoSim:Z

    .line 943
    :cond_1
    invoke-static {p4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d00d8

    const/4 v1, 0x0

    .line 944
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 945
    .local p1, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setViews(Landroid/view/ViewGroup;)V

    .line 946
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    .line 947
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSubId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .line 896
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # I

    .line 896
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .line 896
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .line 896
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNoSim:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .param p1, "x1"    # Z

    .line 896
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 896
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    return v0
.end method


# virtual methods
.method public apply(Z)Z
    .locals 8
    .param p1, "isSecondaryIcon"    # Z

    .line 971
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 973
    .local v0, "stacked":Z
    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SignalClusterView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apply mMobileVisible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mIsAirplaneMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2300(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mNoSim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNoSim:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mDisabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2300(Lcom/android/systemui/statusbar/SignalClusterView;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 977
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mNoSim:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDisabled:Z

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 987
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eq v3, v5, :cond_4

    .line 995
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    if-eqz v3, :cond_3

    .line 996
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v3, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2400(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 998
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 1001
    :cond_3
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SignalClusterView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set mMobile icon to mSlotIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mSlotIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mMobileStrengthId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " visble:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v3, :cond_5

    .line 1007
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1008
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileTypeId:I

    .line 1012
    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1015
    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    if-eqz v3, :cond_7

    .line 1016
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedDataId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1017
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoiceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1019
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 1021
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1022
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1023
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1027
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 978
    :cond_8
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    const v5, 0x7f0805e5

    if-eq v3, v5, :cond_9

    .line 979
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-static {v3, v6, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2400(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 980
    iput v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    .line 982
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 983
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 984
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v3, :cond_b

    const-string v3, "SignalClusterView"

    const-string v5, "set mMobile icon to NOSIM_RESID"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1032
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1036
    :cond_b
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz p1, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2500(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v5

    goto :goto_4

    :cond_c
    move v5, v2

    :goto_4
    invoke-virtual {v3, v5, v2, v2, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 1038
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2600(Lcom/android/systemui/statusbar/SignalClusterView;)I

    move-result v5

    invoke-virtual {v3, v5, v2, v2, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 1040
    sget-boolean v3, Lcom/android/systemui/statusbar/SignalClusterView;->OP_DEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "SignalClusterView"

    const-string v5, "mobile: %s sig=%d typ=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 1041
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v7, :cond_d

    const-string v7, "VISIBLE"

    goto :goto_5

    :cond_d
    const-string v7, "GONE"

    :goto_5
    aput-object v7, v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStrengthId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1040
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileTypeId:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_6

    :cond_f
    move v3, v4

    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivityId:I

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_7

    :cond_10
    move v3, v4

    :goto_7
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityIn:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mActivityOut:Z

    invoke-static {v3, v5, v6, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2700(Lcom/android/systemui/statusbar/SignalClusterView;ZZZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1056
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileDataConnected:Z

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    move v2, v4

    :goto_8
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1059
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    return v1
.end method

.method public isNoSimVisible()Z
    .locals 2

    .line 1091
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mLastMobileStrengthId:I

    const v1, 0x7f0805e5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 1064
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_0
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 3
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .line 1073
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2800(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2800(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2800(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2800(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1086
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-static {p3, v2, p1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->access$2800(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V

    .line 1088
    return-void
.end method

.method public setViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 950
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileGroup:Landroid/view/ViewGroup;

    .line 951
    const v0, 0x7f0a0246

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    .line 952
    const v0, 0x7f0a024c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileType:Landroid/widget/ImageView;

    .line 953
    const v0, 0x7f0a0244

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoaming:Landroid/widget/ImageView;

    .line 954
    const v0, 0x7f0a0245

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileRoamingSpace:Landroid/view/View;

    .line 955
    const v0, 0x7f0a0241

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityIn:Landroid/widget/ImageView;

    .line 956
    const v0, 0x7f0a0243

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileActivityOut:Landroid/widget/ImageView;

    .line 958
    const v0, 0x7f0a0242

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileInOut:Landroid/widget/ImageView;

    .line 960
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    .line 961
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobile:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSignalDrawable:Lcom/android/settingslib/graph/SignalDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 962
    const v0, 0x7f0a00e3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mDataActivity:Landroid/widget/ImageView;

    .line 963
    const v0, 0x7f0a0247

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedData:Landroid/widget/ImageView;

    .line 964
    const v0, 0x7f0a024b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mStackedVoice:Landroid/widget/ImageView;

    .line 965
    const v0, 0x7f0a0249

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileSingleGroup:Landroid/view/ViewGroup;

    .line 966
    const v0, 0x7f0a024a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->mMobileStackedGroup:Landroid/view/ViewGroup;

    .line 967
    return-void
.end method
