.class Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;
.super Landroid/os/AsyncTask;
.source "UserGridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddNewUserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;->this$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/car/UserGridRecyclerView$1;

    .line 284
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;-><init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .locals 2
    .param p1, "userNames"    # [Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;->this$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/UserManagerHelper;->createNewUser(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;->doInBackground([Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/content/pm/UserInfo;)V
    .locals 1
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;->this$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->this$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView;->access$100(Lcom/android/systemui/statusbar/car/UserGridRecyclerView;)Lcom/android/settingslib/users/UserManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/users/UserManagerHelper;->switchToUser(Landroid/content/pm/UserInfo;)V

    .line 300
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 284
    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$AddNewUserTask;->onPostExecute(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 293
    return-void
.end method
