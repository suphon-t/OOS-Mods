.class public final Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/datetime/ZoneGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZoneGetterData"
.end annotation


# virtual methods
.method public lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0, p1}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneIdsByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
