.class public Lcom/android/systemui/opcarmode/CarModeDockFragment;
.super Landroid/app/Fragment;
.source "CarModeDockFragment.java"


# instance fields
.field private mCarModeDockView:Lcom/android/systemui/opcarmode/CarModeDockView;

.field private mController:Lcom/android/systemui/opcarmode/CarModeDockController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 74
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x903

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 84
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 85
    const-string v1, "CarModeDock"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 87
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 88
    const v1, 0x7f120544

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 90
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d0134

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "carModeDockView":Landroid/view/View;
    sget-boolean v3, Lcom/android/systemui/opcarmode/CarModeDockController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "CarModeDockFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCarModeDock: about to add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    if-nez v1, :cond_1

    return-object v2

    .line 95
    :cond_1
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    .line 97
    .local v2, "fragmentHost":Lcom/android/systemui/fragments/FragmentHostManager;
    new-instance v3, Lcom/android/systemui/opcarmode/CarModeDockFragment;

    invoke-direct {v3}, Lcom/android/systemui/opcarmode/CarModeDockFragment;-><init>()V

    .line 98
    .local v3, "fragment":Lcom/android/systemui/opcarmode/CarModeDockFragment;
    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0a0122

    const-string v6, "CarModeDockFragment"

    .line 99
    invoke-virtual {v4, v5, v3, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 100
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    const-string v4, "CarModeDockFragment"

    invoke-virtual {v2, v4, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 103
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 28
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v0, "CarModeDockFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    const-string v0, "CarModeDockFragment"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const v0, 0x7f0d0133

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 34
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 35
    const-string v0, "CarModeDockFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 57
    const-string v0, "CarModeDockFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 47
    const-string v0, "CarModeDockFragment"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    instance-of v0, p1, Lcom/android/systemui/opcarmode/CarModeDockView;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "CarModeDockFragment"

    const-string v1, "It\'s car mode dock view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/opcarmode/CarModeDockView;

    iput-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mCarModeDockView:Lcom/android/systemui/opcarmode/CarModeDockView;

    .line 52
    :cond_0
    return-void
.end method

.method public refreshUI()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mCarModeDockView:Lcom/android/systemui/opcarmode/CarModeDockView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mCarModeDockView:Lcom/android/systemui/opcarmode/CarModeDockView;

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/CarModeDockView;->refreshUI()V

    .line 71
    :cond_0
    return-void
.end method

.method public setController(Lcom/android/systemui/opcarmode/CarModeDockController;)V
    .locals 2
    .param p1, "controller"    # Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mCarModeDockView:Lcom/android/systemui/opcarmode/CarModeDockView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mCarModeDockView:Lcom/android/systemui/opcarmode/CarModeDockView;

    iget-object v1, p0, Lcom/android/systemui/opcarmode/CarModeDockFragment;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/opcarmode/CarModeDockView;->setController(Lcom/android/systemui/opcarmode/CarModeDockController;)V

    .line 65
    :cond_0
    return-void
.end method
