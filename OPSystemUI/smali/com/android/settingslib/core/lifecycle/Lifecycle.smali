.class public Lcom/android/settingslib/core/lifecycle/Lifecycle;
.super Landroid/arch/lifecycle/LifecycleRegistry;
.source "Lifecycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
    }
.end annotation


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "provider"    # Landroid/arch/lifecycle/LifecycleOwner;

    .line 69
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    .line 58
    new-instance v0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;-><init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/lifecycle/Lifecycle$1;)V

    iput-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mProxy:Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStart()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onResume()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onPause()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onStop()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 54
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->onDestroy()V

    return-void
.end method

.method private onDestroy()V
    .locals 4

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 172
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 173
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    if-eqz v3, :cond_0

    .line 174
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;->onDestroy()V

    .line 171
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method private onPause()V
    .locals 4

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 146
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    if-eqz v3, :cond_0

    .line 147
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnPause;->onPause()V

    .line 144
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method private onResume()V
    .locals 4

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 137
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    if-eqz v3, :cond_0

    .line 138
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnResume;->onResume()V

    .line 135
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method private onStart()V
    .locals 4

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 119
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v3, :cond_0

    .line 120
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    .line 117
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method private onStop()V
    .locals 4

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 164
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v3, :cond_0

    .line 165
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {v3}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    .line 162
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/arch/lifecycle/LifecycleObserver;

    .line 79
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 80
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 81
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 99
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnAttach;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnAttach;->onAttach(Landroid/content/Context;)V

    .line 97
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 109
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 110
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnCreate;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnCreate;->onCreate(Landroid/os/Bundle;)V

    .line 108
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 182
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    if-eqz v3, :cond_0

    .line 183
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;

    invoke-interface {v3, p1, p2}, Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 180
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 199
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 200
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    if-eqz v3, :cond_0

    .line 201
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    return v3

    .line 198
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 191
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    if-eqz v3, :cond_0

    .line 192
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 189
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    .line 155
    .local v2, "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    instance-of v3, v2, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    if-eqz v3, :cond_0

    .line 156
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;

    invoke-interface {v3, p1}, Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 153
    .end local v2    # "observer":Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/arch/lifecycle/LifecycleObserver;

    .line 89
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->ensureMainThread()V

    .line 90
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 91
    instance-of v0, p1, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-void
.end method
