.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;
.super Ljava/lang/Thread;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    .line 910
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 913
    const-string v0, "UserSwitcherController"

    const-string v1, "switchTo:createUser:START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    .line 915
    const v2, 0x7f11065e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 914
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 916
    .local v0, "user":Landroid/content/pm/UserInfo;
    const-string v1, "UserSwitcherController"

    const-string v3, "switchTo:createUser:END"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    if-nez v0, :cond_0

    .line 920
    return-void

    .line 922
    :cond_0
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 926
    .local v1, "id":I
    invoke-static {v1, v2}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/drawable/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 929
    .local v2, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 930
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 931
    return-void
.end method
