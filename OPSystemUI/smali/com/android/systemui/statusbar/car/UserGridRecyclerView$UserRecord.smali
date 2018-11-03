.class public final Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;
.super Ljava/lang/Object;
.source "UserGridRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/UserGridRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserRecord"
.end annotation


# instance fields
.field public final mInfo:Landroid/content/pm/UserInfo;

.field public final mIsAddUser:Z

.field public final mIsForeground:Z

.field public final mIsStartGuestSession:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;ZZZ)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "isStartGuestSession"    # Z
    .param p3, "isAddUser"    # Z
    .param p4, "isForeground"    # Z

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mInfo:Landroid/content/pm/UserInfo;

    .line 337
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsStartGuestSession:Z

    .line 338
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsAddUser:Z

    .line 339
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;->mIsForeground:Z

    .line 340
    return-void
.end method
