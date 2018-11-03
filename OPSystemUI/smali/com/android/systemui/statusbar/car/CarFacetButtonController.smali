.class public Lcom/android/systemui/statusbar/car/CarFacetButtonController;
.super Ljava/lang/Object;
.source "CarFacetButtonController.java"


# instance fields
.field protected mButtonsByCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/car/CarFacetButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButtonsByComponentName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/car/CarFacetButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mButtonsByPackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/car/CarFacetButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private findFacetButtongByComponentName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/car/CarFacetButton;
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 128
    .local v0, "button":Lcom/android/systemui/statusbar/car/CarFacetButton;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 128
    :goto_0
    return-object v1
.end method

.method private getDisplayId()I
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 119
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    return v1

    .line 123
    .end local v0    # "display":Landroid/view/Display;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addFacetButton(Lcom/android/systemui/statusbar/car/CarFacetButton;)V
    .locals 6
    .param p1, "facetButton"    # Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 40
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getCategories()[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "categories":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 42
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getFacetPackages()[Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "facetPackages":[Ljava/lang/String;
    move v3, v1

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 47
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 49
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getComponentName()[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "componentNames":[Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 51
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    aget-object v5, v3, v1

    invoke-virtual {v4, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "i":I
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 56
    return-void
.end method

.method protected getPackageCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 135
    .local v1, "supportedCategories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 136
    .local v3, "category":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 141
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/car/CarFacetButton;

    invoke-virtual {v2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-object v3

    .line 147
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public removeAll()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByComponentName:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 63
    return-void
.end method

.method public taskChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p1, "stackInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->getDisplayId()I

    move-result v0

    .line 77
    .local v0, "displayId":I
    const/4 v1, 0x0

    .line 78
    .local v1, "validStackInfo":Landroid/app/ActivityManager$StackInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$StackInfo;

    .line 80
    .local v3, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget v4, v3, Landroid/app/ActivityManager$StackInfo;->displayId:I

    if-ne v0, v4, :cond_1

    :cond_0
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 82
    move-object v1, v3

    .line 83
    goto :goto_1

    .line 85
    .end local v3    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_1
    goto :goto_0

    .line 87
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 89
    return-void

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    if-eqz v2, :cond_4

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setSelected(Z)V

    .line 96
    :cond_4
    iget-object v2, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->findFacetButtongByComponentName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/car/CarFacetButton;

    move-result-object v3

    .line 98
    .local v3, "facetButton":Lcom/android/systemui/statusbar/car/CarFacetButton;
    if-nez v3, :cond_5

    .line 99
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByPackage:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 102
    :cond_5
    if-nez v3, :cond_6

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->getPackageCategory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "category":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 105
    iget-object v5, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mButtonsByCategory:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 109
    .end local v4    # "category":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/car/CarFacetButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 110
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/car/CarFacetButton;->setSelected(Z)V

    .line 111
    iput-object v3, p0, Lcom/android/systemui/statusbar/car/CarFacetButtonController;->mSelectedFacetButton:Lcom/android/systemui/statusbar/car/CarFacetButton;

    .line 114
    :cond_7
    return-void
.end method
