.class Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IconInjector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference$IconInjector;->mContext:Landroid/content/Context;

    .line 363
    return-void
.end method
