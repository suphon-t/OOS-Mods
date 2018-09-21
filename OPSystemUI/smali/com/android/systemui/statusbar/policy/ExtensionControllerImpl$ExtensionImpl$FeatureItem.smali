.class Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mFeature:Ljava/lang/String;

.field private final mSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0
    .param p2, "feature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 325
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.FeatureItem<TT;>;"
    .local p3, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;->mSupplier:Ljava/util/function/Supplier;

    .line 327
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;->mFeature:Ljava/lang/String;

    .line 328
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 339
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.FeatureItem<TT;>;"
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.FeatureItem<TT;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;->this$1:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;->mSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0
.end method

.method public sortOrder()I
    .locals 1

    .line 343
    .local p0, "this":Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$FeatureItem;, "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl<TT;>.FeatureItem<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
