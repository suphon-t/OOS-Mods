.class Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExtensionFragmentManager"
.end annotation


# instance fields
.field private final mExtensionLookup:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentHostManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/fragments/FragmentHostManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/fragments/FragmentHostManager;

    .line 266
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    return-void
.end method

.method private reloadFragments()V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->access$700(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Parcelable;

    move-result-object v0

    .line 285
    .local v0, "p":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v1, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->access$800(Lcom/android/systemui/fragments/FragmentHostManager;Landroid/os/Parcelable;)V

    .line 286
    return-void
.end method


# virtual methods
.method instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 289
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 290
    .local v0, "extensionContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 291
    invoke-static {v0, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 292
    .local v1, "f":Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/systemui/plugins/Plugin;

    if-eqz v2, :cond_0

    .line 293
    move-object v2, v1

    check-cast v2, Lcom/android/systemui/plugins/Plugin;

    iget-object v3, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->access$200(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/systemui/plugins/Plugin;->onCreate(Landroid/content/Context;Landroid/content/Context;)V

    .line 295
    :cond_0
    return-object v1

    .line 297
    .end local v1    # "f":Landroid/app/Fragment;
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public setCurrentExtension(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "oldClass"    # Ljava/lang/String;
    .param p4, "currentClass"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .line 271
    if-eqz p3, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    invoke-virtual {v0, p4, p5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-virtual {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, p5, p4, v1}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->reloadFragments()V

    .line 279
    return-void
.end method
