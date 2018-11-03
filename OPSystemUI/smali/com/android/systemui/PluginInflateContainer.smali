.class public Lcom/android/systemui/PluginInflateContainer;
.super Lcom/android/systemui/AutoReinflateContainer;
.source "PluginInflateContainer.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/AutoReinflateContainer;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/ViewProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mPluginView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/AutoReinflateContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    sget-object v0, Lcom/android/systemui/R$styleable;->PluginInflateContainer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "viewType":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "PluginInflateContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem getting class info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    .line 69
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected inflateLayoutImpl()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/PluginInflateContainer;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->inflateLayoutImpl()V

    .line 94
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 73
    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->onAttachedToWindow()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 75
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    iget-object v1, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 81
    invoke-super {p0}, Lcom/android/systemui/AutoReinflateContainer;->onDetachedFromWindow()V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 83
    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/ViewProvider;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/PluginInflateContainer;->onPluginConnected(Lcom/android/systemui/plugins/ViewProvider;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/ViewProvider;Landroid/content/Context;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/ViewProvider;
    .param p2, "context"    # Landroid/content/Context;

    .line 98
    invoke-interface {p1}, Lcom/android/systemui/plugins/ViewProvider;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/PluginInflateContainer;->inflateLayout()V

    .line 100
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/systemui/plugins/ViewProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/PluginInflateContainer;->onPluginDisconnected(Lcom/android/systemui/plugins/ViewProvider;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/ViewProvider;)V
    .locals 1
    .param p1, "plugin"    # Lcom/android/systemui/plugins/ViewProvider;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/PluginInflateContainer;->mPluginView:Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/PluginInflateContainer;->inflateLayout()V

    .line 106
    return-void
.end method
