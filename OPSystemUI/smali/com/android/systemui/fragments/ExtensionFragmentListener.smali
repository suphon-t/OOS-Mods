.class public Lcom/android/systemui/fragments/ExtensionFragmentListener;
.super Ljava/lang/Object;
.source "ExtensionFragmentListener.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/systemui/plugins/FragmentBase;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field private final mId:I

.field private mOldClass:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/android/systemui/fragments/ExtensionFragmentListener;, "Lcom/android/systemui/fragments/ExtensionFragmentListener<TT;>;"
    .local p4, "extension":Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;, "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 43
    iput-object p4, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 44
    iput p3, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mId:I

    .line 45
    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 46
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    iget-object v2, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p3, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->clearItem(Z)V

    .line 49
    return-void
.end method

.method public static attachExtensonToFragment(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p3, "extension":Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;, "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<TT;>;"
    new-instance v0, Lcom/android/systemui/fragments/ExtensionFragmentListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/fragments/ExtensionFragmentListener;-><init>(Landroid/view/View;Ljava/lang/String;ILcom/android/systemui/statusbar/policy/ExtensionController$Extension;)V

    invoke-interface {p3, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->addCallback(Ljava/util/function/Consumer;)V

    .line 67
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/systemui/plugins/FragmentBase;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/android/systemui/fragments/ExtensionFragmentListener;, "Lcom/android/systemui/fragments/ExtensionFragmentListener<TT;>;"
    .local p1, "extension":Lcom/android/systemui/plugins/FragmentBase;, "TT;"
    :try_start_0
    const-class v0, Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getExtensionManager()Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mId:I

    iget-object v3, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mOldClass:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 55
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->setCurrentExtension(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mOldClass:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v1, "ExtensionFragmentListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be a Fragment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->clearItem(Z)V

    .line 62
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 30
    .local p0, "this":Lcom/android/systemui/fragments/ExtensionFragmentListener;, "Lcom/android/systemui/fragments/ExtensionFragmentListener<TT;>;"
    check-cast p1, Lcom/android/systemui/plugins/FragmentBase;

    invoke-virtual {p0, p1}, Lcom/android/systemui/fragments/ExtensionFragmentListener;->accept(Lcom/android/systemui/plugins/FragmentBase;)V

    return-void
.end method
