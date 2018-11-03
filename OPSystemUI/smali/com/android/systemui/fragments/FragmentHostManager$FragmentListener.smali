.class public interface abstract Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
.super Ljava/lang/Object;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FragmentListener"
.end annotation


# virtual methods
.method public abstract onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
.end method

.method public onFragmentViewDestroyed(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 193
    return-void
.end method
