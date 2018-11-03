.class Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;
.super Ljava/lang/Object;
.source "AppRestrictionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/AppRestrictionsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUser:Landroid/os/UserHandle;


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 412
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method getUser()Landroid/os/UserHandle;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/settingslib/users/AppRestrictionsHelper$Injector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method
