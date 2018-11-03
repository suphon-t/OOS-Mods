.class Lcom/android/settingslib/applications/ApplicationsState$17;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1703
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    monitor-enter v0

    .line 1704
    :try_start_0
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1706
    .local v1, "isGame":Z
    :goto_1
    monitor-exit v0

    .line 1707
    return v1

    .line 1706
    .end local v1    # "isGame":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 0

    .line 1697
    return-void
.end method
