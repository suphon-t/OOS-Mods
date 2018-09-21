.class public interface abstract Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
.super Ljava/lang/Object;
.source "IOneplusDisplay.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 6
    .param p0, "binder"    # Landroid/os/IHwBinder;

    .line 7
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 11
    :cond_0
    const-string/jumbo v1, "vendor.oneplus.hardware.display@1.0::IOneplusDisplay"

    .line 12
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    .line 14
    .local v1, "iface":Landroid/os/IHwInterface;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    if-eqz v2, :cond_1

    .line 15
    move-object v0, v1

    check-cast v0, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    return-object v0

    .line 18
    :cond_1
    new-instance v2, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay$Proxy;

    invoke-direct {v2, p0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay$Proxy;-><init>(Landroid/os/IHwBinder;)V

    .line 21
    .local v2, "proxy":Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_start_0
    invoke-interface {v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    .local v4, "descriptor":Ljava/lang/String;
    const-string/jumbo v5, "vendor.oneplus.hardware.display@1.0::IOneplusDisplay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    .line 23
    return-object v2

    .line 25
    .end local v4    # "descriptor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 27
    :cond_3
    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 29
    :goto_1
    return-object v0
.end method

.method public static getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const-string v0, "default"

    invoke-static {v0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService(Ljava/lang/String;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-string/jumbo v0, "vendor.oneplus.hardware.display@1.0::IOneplusDisplay"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMode(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
