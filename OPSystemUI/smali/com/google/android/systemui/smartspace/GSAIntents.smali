.class public Lcom/google/android/systemui/smartspace/GSAIntents;
.super Ljava/lang/Object;
.source "GSAIntents.java"


# direct methods
.method public static varargs getGsaPackageFilter([Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "actions"    # [Ljava/lang/String;

    .line 31
    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-static {v0, p0}, Lcom/google/android/systemui/smartspace/GSAIntents;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "actions"    # [Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 36
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 37
    .local v4, "action":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .end local v4    # "action":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_0
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p0, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 41
    return-object v0
.end method
