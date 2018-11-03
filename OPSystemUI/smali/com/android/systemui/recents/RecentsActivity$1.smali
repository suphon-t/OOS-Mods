.class Lcom/android/systemui/recents/RecentsActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/RecentsActivity;

    .line 115
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity$1;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/RecentsActivity;->onPackageChanged(Ljava/lang/String;I)V

    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity$1;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/RecentsActivity;->onPackageChanged(Ljava/lang/String;I)V

    .line 130
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity$1;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity$1;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/RecentsActivity;->onPackageChanged(Ljava/lang/String;I)V

    .line 119
    return-void
.end method
