.class Lcom/android/systemui/recents/RecentsOnboarding$1;
.super Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;
.source "RecentsOnboarding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsOnboarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsOnboarding;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SysUiTaskStackChangeListener;-><init>()V

    return-void
.end method

.method private onAppLaunch()V
    .locals 10

    .line 138
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 140
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v0, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v2}, Lcom/android/systemui/recents/RecentsOnboarding;->access$000(Lcom/android/systemui/recents/RecentsOnboarding;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    .line 145
    return-void

    .line 147
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    return-void

    .line 150
    :cond_2
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->mLastPackageName:Ljava/lang/String;

    .line 151
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v2

    .line 152
    .local v2, "activityType":I
    if-ne v2, v3, :cond_c

    .line 153
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v4}, Lcom/android/systemui/recents/RecentsOnboarding;->access$100(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v4

    .line 154
    .local v4, "alreadySeenSwipeUpOnboarding":Z
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v5}, Lcom/android/systemui/recents/RecentsOnboarding;->access$200(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v5

    .line 155
    .local v5, "alreadySeenQuickScrubsOnboarding":Z
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 156
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsOnboarding;->onDisconnectedFromLauncher()V

    .line 157
    return-void

    .line 160
    :cond_3
    const/4 v6, 0x0

    .line 161
    .local v6, "shouldLog":Z
    const/16 v7, 0xa

    if-nez v4, :cond_8

    .line 162
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$300(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v3

    const/4 v8, 0x3

    if-lt v3, v8, :cond_b

    .line 164
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$400(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v3

    const v8, 0x7f11054f

    if-eqz v3, :cond_7

    .line 165
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    .line 166
    invoke-static {v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$500(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v3

    .line 167
    .local v3, "hasDimissedSwipeUpOnboardingCount":I
    const/4 v9, 0x4

    if-le v3, v9, :cond_4

    .line 169
    return-void

    .line 173
    :cond_4
    const/4 v9, 0x2

    if-gt v3, v9, :cond_5

    .line 174
    const/4 v7, 0x5

    goto :goto_0

    .line 175
    :cond_5
    nop

    .line 176
    .local v7, "swipeUpShowOnAppLauncherAfterDismiss":I
    :goto_0
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v9}, Lcom/android/systemui/recents/RecentsOnboarding;->access$608(Lcom/android/systemui/recents/RecentsOnboarding;)I

    .line 177
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v9}, Lcom/android/systemui/recents/RecentsOnboarding;->access$600(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v9

    if-lt v9, v7, :cond_6

    .line 179
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v9, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$602(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 180
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    .line 182
    .end local v3    # "hasDimissedSwipeUpOnboardingCount":I
    .end local v7    # "swipeUpShowOnAppLauncherAfterDismiss":I
    :cond_6
    goto :goto_1

    .line 183
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, v8}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    .line 185
    :goto_1
    if-eqz v6, :cond_b

    .line 186
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v3, v1, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    goto :goto_3

    .line 190
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v8}, Lcom/android/systemui/recents/RecentsOnboarding;->access$800(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v8

    if-lt v8, v7, :cond_b

    .line 191
    iget-object v8, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v8}, Lcom/android/systemui/recents/RecentsOnboarding;->access$900(Lcom/android/systemui/recents/RecentsOnboarding;)Z

    move-result v8

    const v9, 0x7f11054c

    if-eqz v8, :cond_9

    .line 192
    iget-object v8, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v8}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1000(Lcom/android/systemui/recents/RecentsOnboarding;)I

    move-result v8

    if-lt v8, v7, :cond_a

    .line 194
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->access$1002(Lcom/android/systemui/recents/RecentsOnboarding;I)I

    .line 195
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    goto :goto_2

    .line 198
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v7, v9}, Lcom/android/systemui/recents/RecentsOnboarding;->show(I)Z

    move-result v6

    .line 200
    :cond_a
    :goto_2
    if-eqz v6, :cond_b

    .line 201
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v7, v1, v3}, Lcom/android/systemui/recents/RecentsOnboarding;->access$700(Lcom/android/systemui/recents/RecentsOnboarding;II)V

    .line 206
    .end local v4    # "alreadySeenSwipeUpOnboarding":Z
    .end local v5    # "alreadySeenQuickScrubsOnboarding":Z
    .end local v6    # "shouldLog":Z
    :cond_b
    :goto_3
    goto :goto_4

    .line 207
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsOnboarding$1;->this$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/RecentsOnboarding;->hide(Z)V

    .line 209
    :goto_4
    return-void
.end method


# virtual methods
.method public onTaskCreated(ILandroid/content/ComponentName;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    .line 130
    return-void
.end method

.method public onTaskMovedToFront(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsOnboarding$1;->onAppLaunch()V

    .line 135
    return-void
.end method
