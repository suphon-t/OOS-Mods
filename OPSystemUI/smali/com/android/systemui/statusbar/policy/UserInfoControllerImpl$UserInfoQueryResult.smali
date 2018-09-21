.class Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;
.super Ljava/lang/Object;
.source "UserInfoControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserInfoQueryResult"
.end annotation


# instance fields
.field private mAvatar:Landroid/graphics/drawable/Drawable;

.field private mName:Ljava/lang/String;

.field private mUserAccount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "avatar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mName:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mAvatar:Landroid/graphics/drawable/Drawable;

    .line 227
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mUserAccount:Ljava/lang/String;

    .line 228
    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mAvatar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAccount()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl$UserInfoQueryResult;->mUserAccount:Ljava/lang/String;

    return-object v0
.end method
