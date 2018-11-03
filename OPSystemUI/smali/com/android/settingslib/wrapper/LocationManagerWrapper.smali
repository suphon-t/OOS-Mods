.class public Lcom/android/settingslib/wrapper/LocationManagerWrapper;
.super Ljava/lang/Object;
.source "LocationManagerWrapper.java"


# instance fields
.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    .line 33
    return-void
.end method


# virtual methods
.method public setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 63
    return-void
.end method
