.class public Lcom/android/systemui/DessertCase;
.super Landroid/app/Activity;
.source "DessertCase.java"


# instance fields
.field mView:Lcom/android/systemui/DessertCaseView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v0}, Lcom/android/systemui/DessertCaseView;->stop()V

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    new-instance v1, Lcom/android/systemui/DessertCase$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/DessertCase$1;-><init>(Lcom/android/systemui/DessertCase;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/DessertCaseView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/DessertCase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/systemui/DessertCaseDream;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 34
    const-string v2, "DessertCase"

    const-string v4, "ACHIEVEMENT UNLOCKED"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 40
    :cond_0
    new-instance v2, Lcom/android/systemui/DessertCaseView;

    invoke-direct {v2, p0}, Lcom/android/systemui/DessertCaseView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    .line 42
    new-instance v2, Lcom/android/systemui/DessertCaseView$RescalingContainer;

    invoke-direct {v2, p0}, Lcom/android/systemui/DessertCaseView$RescalingContainer;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "container":Lcom/android/systemui/DessertCaseView$RescalingContainer;
    iget-object v3, p0, Lcom/android/systemui/DessertCase;->mView:Lcom/android/systemui/DessertCaseView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/DessertCaseView$RescalingContainer;->setView(Lcom/android/systemui/DessertCaseView;)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/systemui/DessertCase;->setContentView(Landroid/view/View;)V

    .line 47
    return-void
.end method
