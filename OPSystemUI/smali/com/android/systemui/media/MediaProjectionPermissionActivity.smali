.class public Lcom/android/systemui/media/MediaProjectionPermissionActivity;
.super Landroid/app/Activity;
.source "MediaProjectionPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mPackageName:Ljava/lang/String;

.field private mPermanentGrant:Z

.field private mService:Landroid/media/projection/IMediaProjectionManager;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permanentGrant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/media/projection/IMediaProjectionManager;->createProjection(ILjava/lang/String;IZ)Landroid/media/projection/IMediaProjection;

    move-result-object v0

    .line 203
    .local v0, "projection":Landroid/media/projection/IMediaProjection;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-interface {v0}, Landroid/media/projection/IMediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 205
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 211
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 196
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    .line 197
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 179
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 180
    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPermanentGrant:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MediaProjectionPermissionActivity"

    const-string v2, "Error granting projection permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v0    # "e":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    goto :goto_2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    throw v0

    .line 187
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 188
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 191
    nop

    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "icicle"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 64
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 67
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 68
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    .line 70
    iget-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 72
    return-void

    .line 75
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v3, v0

    .line 78
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    move-object v5, v0

    .line 79
    .local v5, "aInfo":Landroid/content/pm/ApplicationInfo;
    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    nop

    .line 83
    nop

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "bypassDialog":Z
    :try_start_1
    const-string v6, "com.oneplus.screenrecord"

    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    const/4 v0, 0x1

    .line 95
    :cond_1
    if-nez v0, :cond_8

    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mService:Landroid/media/projection/IMediaProjectionManager;

    iget v8, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v9, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Landroid/media/projection/IMediaProjectionManager;->hasProjectionPermission(ILjava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_2

    goto/16 :goto_2

    .line 106
    .end local v0    # "bypassDialog":Z
    :cond_2
    nop

    .line 108
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 109
    .local v0, "paint":Landroid/text/TextPaint;
    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 111
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "label":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 118
    .local v8, "labelLength":I
    move v9, v4

    .line 119
    .local v9, "offset":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 120
    invoke-virtual {v7, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    .line 121
    .local v10, "codePoint":I
    invoke-static {v10}, Ljava/lang/Character;->getType(I)I

    move-result v11

    .line 122
    .local v11, "type":I
    const/16 v12, 0xd

    if-eq v11, v12, :cond_4

    const/16 v12, 0xf

    if-eq v11, v12, :cond_4

    const/16 v12, 0xe

    if-ne v11, v12, :cond_3

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v9, v12

    .line 129
    .end local v10    # "codePoint":I
    .end local v11    # "type":I
    goto :goto_0

    .line 125
    .restart local v10    # "codePoint":I
    .restart local v11    # "type":I
    :cond_4
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\u2026"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 126
    nop

    .line 131
    .end local v10    # "codePoint":I
    .end local v11    # "type":I
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 132
    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    .line 135
    :cond_6
    const/high16 v10, 0x43fa0000    # 500.0f

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v0, v10, v11}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 136
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "unsanitizedAppName":Ljava/lang/String;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 139
    .local v11, "appName":Ljava/lang/String;
    const v12, 0x7f1103bb

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v11, v14, v4

    invoke-virtual {v1, v12, v14}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "actionText":Ljava/lang/String;
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 142
    .local v14, "message":Landroid/text/SpannableString;
    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 143
    .local v15, "appNameIndex":I
    if-ltz v15, :cond_7

    .line 144
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 145
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v15, v16

    .line 144
    invoke-virtual {v14, v6, v15, v13, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 148
    :cond_7
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    invoke-virtual {v5, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f1103ba

    .line 151
    invoke-virtual {v4, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v6, 0x1040000

    .line 152
    invoke-virtual {v4, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0d01b7

    .line 153
    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 154
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 155
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 157
    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->create()V

    .line 158
    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 160
    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    const v6, 0x7f0a0357

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iget-object v4, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 162
    .local v4, "w":Landroid/view/Window;
    const/16 v6, 0x7d3

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 163
    const/high16 v6, 0x80000

    invoke-virtual {v4, v6}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 165
    iget-object v6, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 166
    return-void

    .line 97
    .end local v4    # "w":Landroid/view/Window;
    .end local v7    # "label":Ljava/lang/String;
    .end local v8    # "labelLength":I
    .end local v9    # "offset":I
    .end local v10    # "unsanitizedAppName":Ljava/lang/String;
    .end local v11    # "appName":Ljava/lang/String;
    .end local v12    # "actionText":Ljava/lang/String;
    .end local v14    # "message":Landroid/text/SpannableString;
    .end local v15    # "appNameIndex":I
    .local v0, "bypassDialog":Z
    :cond_8
    :goto_2
    :try_start_2
    iget v6, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mUid:I

    iget-object v7, v1, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v6, v7, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->getMediaProjectionIntent(ILjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const/4 v6, -0x1

    invoke-virtual {v1, v6, v4}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->setResult(ILandroid/content/Intent;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    return-void

    .line 102
    .end local v0    # "bypassDialog":Z
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaProjectionPermissionActivity"

    const-string v6, "Error checking projection permissions"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 105
    return-void

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v5    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v0

    .line 81
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MediaProjectionPermissionActivity"

    const-string/jumbo v5, "unable to look up package name"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->finish()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/media/MediaProjectionPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 174
    :cond_0
    return-void
.end method
