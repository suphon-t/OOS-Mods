.class Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;
.super Landroid/os/AsyncTask;
.source "UserInfoControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->queryForUserInformation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field final synthetic val$avatarSize:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isGuest:Z

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;IIZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    iput p4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 156
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userName:Ljava/lang/String;

    .line 157
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 158
    .local v2, "avatar":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 159
    .local v3, "rawAvatar":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 160
    new-instance v4, Lcom/android/settingslib/drawable/UserIconDrawable;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$avatarSize:I

    invoke-direct {v4, v5}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 161
    invoke-virtual {v4, v3}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v2

    goto :goto_1

    .line 168
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$isGuest:Z

    if-eqz v4, :cond_1

    const/16 v4, -0x2710

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    :goto_0
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 175
    :goto_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_3

    .line 177
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id"

    const-string v7, "display_name"

    filled-new-array {v4, v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 182
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_3

    .line 184
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 185
    const-string v5, "display_name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v5

    .line 189
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 190
    goto :goto_2

    .line 189
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    .line 193
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->val$userId:I

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUserAccount(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "userAccount":Ljava/lang/String;
    new-instance v5, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-direct {v5, v1, v2, v4}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;)V
    .locals 2
    .param p1, "result"    # Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    .line 199
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$102(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$202(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->getUserAccount()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;)V

    .line 204
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p1, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$3;->onPostExecute(Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;)V

    return-void
.end method
