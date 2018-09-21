.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;
.super Landroid/os/AsyncTask;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field final synthetic val$addUsersWhenLocked:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    check-cast p1, [Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;"
        }
    .end annotation

    .local p1, "params":[Landroid/util/SparseArray;, "[Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    .line 193
    const/4 v1, 0x0

    aget-object v2, p1, v1

    .line 194
    .local v2, "bitmaps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-nez v3, :cond_0

    .line 196
    const/4 v1, 0x0

    return-object v1

    .line 198
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v5, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 200
    .local v6, "currentId":I
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v7, v7, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v7

    .line 201
    .local v7, "canSwitchUsers":Z
    const/4 v8, 0x0

    .line 202
    .local v8, "currentUserInfo":Landroid/content/pm/UserInfo;
    const/4 v9, 0x0

    .line 204
    .local v9, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v13, v8

    move-object v12, v9

    .end local v8    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v12, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v13, "currentUserInfo":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 205
    .local v11, "info":Landroid/content/pm/UserInfo;
    iget v8, v11, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v8, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    move/from16 v24, v8

    .line 206
    .local v24, "isCurrent":Z
    if-eqz v24, :cond_2

    .line 207
    move-object v8, v11

    .line 209
    .end local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v8    # "currentUserInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v25, v8

    goto :goto_2

    .end local v8    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    :cond_2
    move-object/from16 v25, v13

    .end local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .local v25, "currentUserInfo":Landroid/content/pm/UserInfo;
    :goto_2
    if-nez v7, :cond_4

    if-eqz v24, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v23, v1

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v23, v4

    .line 210
    .local v23, "switchToEnabled":Z
    :goto_4
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 211
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 214
    new-instance v16, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v8, v16

    move-object v9, v11

    move-object v1, v11

    move v11, v13

    .end local v11    # "info":Landroid/content/pm/UserInfo;
    .local v1, "info":Landroid/content/pm/UserInfo;
    move-object v13, v12

    move/from16 v12, v24

    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v13, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v26, v13

    move v13, v15

    .end local v13    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v26, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v27, v14

    move/from16 v14, v17

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 235
    .end local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v8, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object v12, v8

    goto :goto_7

    .line 217
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v8    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v11    # "info":Landroid/content/pm/UserInfo;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_5
    move-object v1, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v14

    .end local v11    # "info":Landroid/content/pm/UserInfo;
    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    .restart local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 218
    iget v8, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 219
    .local v8, "picture":Landroid/graphics/Bitmap;
    if-nez v8, :cond_6

    .line 220
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v10, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 222
    if-eqz v8, :cond_6

    .line 223
    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v9, v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070315

    .line 224
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 225
    .local v9, "avatarSize":I
    invoke-static {v8, v9, v9, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 229
    .end local v9    # "avatarSize":I
    :cond_6
    if-eqz v24, :cond_7

    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 230
    .local v9, "index":I
    :goto_5
    new-instance v10, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v10

    move-object/from16 v17, v1

    move-object/from16 v18, v8

    move/from16 v20, v24

    invoke-direct/range {v16 .. v23}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    invoke-virtual {v5, v9, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v8    # "picture":Landroid/graphics/Bitmap;
    .end local v9    # "index":I
    .end local v23    # "switchToEnabled":Z
    .end local v24    # "isCurrent":Z
    goto :goto_6

    .line 235
    .end local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_8
    move-object/from16 v26, v12

    move-object/from16 v27, v14

    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_9
    :goto_6
    move-object/from16 v12, v26

    .line 204
    .end local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :goto_7
    move-object/from16 v13, v25

    move-object/from16 v14, v27

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 241
    .end local v25    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .local v13, "currentUserInfo":Landroid/content/pm/UserInfo;
    :cond_a
    move-object/from16 v26, v12

    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    const-string v8, "no_add_user"

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v9}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/2addr v1, v4

    .line 243
    .local v1, "systemCanCreateUsers":Z
    if-eqz v13, :cond_c

    .line 244
    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v13, Landroid/content/pm/UserInfo;->id:I

    if-nez v8, :cond_c

    :cond_b
    if-eqz v1, :cond_c

    move v8, v4

    goto :goto_8

    :cond_c
    const/4 v8, 0x0

    :goto_8
    move/from16 v23, v8

    .line 247
    .local v23, "currentUserCanCreateUsers":Z
    if-eqz v1, :cond_d

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    if-eqz v8, :cond_d

    move v8, v4

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    move/from16 v24, v8

    .line 248
    .local v24, "anyoneCanCreateUsers":Z
    if-nez v23, :cond_f

    if-eqz v24, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v12, v26

    goto :goto_b

    :cond_f
    :goto_a
    move-object/from16 v12, v26

    if-nez v12, :cond_10

    .end local v26    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move v8, v4

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v8, 0x0

    :goto_c
    move/from16 v25, v8

    .line 250
    .local v25, "canCreateGuest":Z
    if-nez v23, :cond_11

    if-eqz v24, :cond_12

    :cond_11
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v8, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 251
    invoke-virtual {v8}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v8

    if-eqz v8, :cond_12

    move v8, v4

    goto :goto_d

    :cond_12
    const/4 v8, 0x0

    :goto_d
    move/from16 v26, v8

    .line 252
    .local v26, "canCreateUser":Z
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->val$addUsersWhenLocked:Z

    xor-int/lit8 v14, v8, 0x1

    .line 254
    .local v14, "createIsRestricted":Z
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 255
    if-nez v12, :cond_14

    .line 256
    if-eqz v25, :cond_13

    .line 257
    new-instance v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v8, v4

    move-object/from16 v28, v12

    move v12, v15

    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .local v28, "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    move-object/from16 v27, v13

    move/from16 v13, v16

    .end local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .local v27, "currentUserInfo":Landroid/content/pm/UserInfo;
    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    move-object v12, v4

    .line 260
    .end local v28    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4, v12}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 261
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 269
    .end local v27    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    :cond_13
    move-object/from16 v27, v13

    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v27    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v28    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    goto :goto_f

    .line 264
    .end local v27    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .end local v28    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    :cond_14
    move-object/from16 v28, v12

    move-object/from16 v27, v13

    .end local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .end local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v27    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v28    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-boolean v4, v12, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    .end local v28    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    .restart local v12    # "guestRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    if-eqz v4, :cond_15

    const/4 v4, 0x0

    goto :goto_e

    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 265
    .local v4, "index":I
    :goto_e
    invoke-virtual {v5, v4, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v4    # "index":I
    goto :goto_f

    .line 269
    .end local v27    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    :cond_16
    move-object/from16 v27, v13

    .end local v13    # "currentUserInfo":Landroid/content/pm/UserInfo;
    .restart local v27    # "currentUserInfo":Landroid/content/pm/UserInfo;
    :goto_f
    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$000(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v4

    if-nez v4, :cond_17

    if-eqz v26, :cond_17

    .line 270
    new-instance v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v15, v4

    move/from16 v21, v14

    move/from16 v22, v7

    invoke-direct/range {v15 .. v22}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZ)V

    .line 273
    .local v4, "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v8, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    .line 274
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v4    # "addUserRecord":Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;
    :cond_17
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 189
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "userRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;>;"
    if-eqz p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$1;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 286
    :cond_0
    return-void
.end method
