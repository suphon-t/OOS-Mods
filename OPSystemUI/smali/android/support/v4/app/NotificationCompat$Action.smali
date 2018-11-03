.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field private mAllowGeneratedReplies:Z

.field private final mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field final mExtras:Landroid/os/Bundle;

.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

.field private final mSemanticAction:I

.field mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# virtual methods
.method public getActionIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 3184
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getAllowGeneratedReplies()Z
    .locals 1

    .line 3199
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z

    return v0
.end method

.method public getDataOnlyRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 1

    .line 3233
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mDataOnlyRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 3191
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 3176
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    return v0
.end method

.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
    .locals 1

    .line 3208
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public getSemanticAction()I
    .locals 1

    .line 3219
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mSemanticAction:I

    return v0
.end method

.method public getShowsUserInterface()Z
    .locals 1

    .line 3241
    iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mShowsUserInterface:Z

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 3180
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
