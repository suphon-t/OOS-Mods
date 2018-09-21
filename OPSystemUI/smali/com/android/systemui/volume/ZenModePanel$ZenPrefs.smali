.class final Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;
.super Ljava/lang/Object;
.source "ZenModePanel.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/ZenModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZenPrefs"
.end annotation


# instance fields
.field private mConfirmedAlarmIntroduction:Z

.field private mConfirmedPriorityIntroduction:Z

.field private mConfirmedSilenceIntroduction:Z

.field private mMinuteIndex:I

.field private final mNoneDangerousThreshold:I

.field private mNoneSelected:I

.field final synthetic this$0:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/ZenModePanel;)V
    .locals 2

    .line 891
    iput-object p1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 893
    const v1, 0x7f0b00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneDangerousThreshold:I

    .line 894
    invoke-static {p1}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/systemui/Prefs;->registerListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 895
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateMinuteIndex()V

    .line 896
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateNoneSelected()V

    .line 897
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedPriorityIntroduction()V

    .line 898
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedSilenceIntroduction()V

    .line 899
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedAlarmIntroduction()V

    .line 900
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Lcom/android/systemui/volume/ZenModePanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/ZenModePanel;
    .param p2, "x1"    # Lcom/android/systemui/volume/ZenModePanel$1;

    .line 882
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;-><init>(Lcom/android/systemui/volume/ZenModePanel;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 882
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 882
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;

    .line 882
    iget-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    return v0
.end method

.method private clampIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 937
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$1800()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampNoneSelected(I)I
    .locals 2
    .param p1, "noneSelected"    # I

    .line 947
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private updateConfirmedAlarmIntroduction()V
    .locals 4

    .line 969
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndConfirmedAlarmIntroduction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 971
    .local v0, "confirmed":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 972
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    .line 973
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirmed alarm introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedAlarmIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_1
    return-void
.end method

.method private updateConfirmedPriorityIntroduction()V
    .locals 4

    .line 951
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndConfirmedPriorityIntroduction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 953
    .local v0, "confirmed":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 954
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    .line 955
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirmed priority introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedPriorityIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_1
    return-void
.end method

.method private updateConfirmedSilenceIntroduction()V
    .locals 4

    .line 960
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndConfirmedSilenceIntroduction"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 962
    .local v0, "confirmed":Z
    iget-boolean v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    if-ne v0, v1, :cond_0

    return-void

    .line 963
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    .line 964
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Confirmed silence introduction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mConfirmedSilenceIntroduction:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_1
    return-void
.end method

.method private updateMinuteIndex()V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndCountdownMinuteIndex"

    .line 932
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$1700()I

    move-result v2

    .line 931
    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    .line 933
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    return-void
.end method

.method private updateNoneSelected()V
    .locals 3

    .line 941
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndNoneSelected"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    .line 943
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "None selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_0
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 923
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateMinuteIndex()V

    .line 924
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateNoneSelected()V

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedPriorityIntroduction()V

    .line 926
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedSilenceIntroduction()V

    .line 927
    invoke-direct {p0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->updateConfirmedAlarmIntroduction()V

    .line 928
    return-void
.end method

.method public setMinuteIndex(I)V
    .locals 3
    .param p1, "minuteIndex"    # I

    .line 914
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result p1

    .line 915
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 916
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    .line 917
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting favorite minute index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndCountdownMinuteIndex"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mMinuteIndex:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 919
    return-void
.end method

.method public trackNoneSelected()V
    .locals 3

    .line 903
    iget v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->clampNoneSelected(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    .line 904
    invoke-static {}, Lcom/android/systemui/volume/ZenModePanel;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$800(Lcom/android/systemui/volume/ZenModePanel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting none selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " threshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneDangerousThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->this$0:Lcom/android/systemui/volume/ZenModePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenModePanel;->access$900(Lcom/android/systemui/volume/ZenModePanel;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DndNoneSelected"

    iget v2, p0, Lcom/android/systemui/volume/ZenModePanel$ZenPrefs;->mNoneSelected:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 907
    return-void
.end method
