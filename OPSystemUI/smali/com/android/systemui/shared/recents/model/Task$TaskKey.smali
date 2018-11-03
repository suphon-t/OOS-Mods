.class public Lcom/android/systemui/shared/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isTopAppLocked:Z

.field public lastActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mHashCode:I

.field public final sourceComponent:Landroid/content/ComponentName;

.field public final userId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public windowingMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "windowingMode"    # I
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "sourceComponent"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I
    .param p6, "lastActiveTime"    # J
    .param p8, "isTopAppLocked"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 77
    iput p2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    .line 78
    iput-object p3, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 79
    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 80
    iput p5, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 81
    iput-wide p6, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    .line 84
    iput-boolean p8, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isTopAppLocked:Z

    .line 86
    return-void
.end method

.method private updateHashCode()V
    .locals 3

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    .line 128
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 106
    instance-of v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    return v1

    .line 109
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 110
    .local v0, "otherKey":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    iget v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
