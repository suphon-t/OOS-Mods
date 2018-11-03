.class Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;
.super Landroid/app/FragmentHostCallback;
.source "FragmentHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fragments/FragmentHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/FragmentHostCallback<",
        "Lcom/android/systemui/fragments/FragmentHostManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fragments/FragmentHostManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentHostManager;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/fragments/FragmentHostManager;

    .line 206
    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 207
    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->access$200(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->access$300(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/FragmentHostCallback;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 208
    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 222
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->access$500(Lcom/android/systemui/fragments/FragmentHostManager;)Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 252
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/systemui/fragments/FragmentHostManager;->access$400(Lcom/android/systemui/fragments/FragmentHostManager;Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0, p1}, Lcom/android/systemui/fragments/FragmentHostManager;->access$600(Lcom/android/systemui/fragments/FragmentHostManager;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Lcom/android/systemui/fragments/FragmentHostManager;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->onGetHost()Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentHostManager$HostCallbacks;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->access$200(Lcom/android/systemui/fragments/FragmentHostManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 1

    .line 237
    const/4 v0, 0x1

    return v0
.end method
