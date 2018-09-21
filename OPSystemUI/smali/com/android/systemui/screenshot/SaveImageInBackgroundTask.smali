.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mScreenshotDir:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .param p3, "nManager"    # Landroid/app/NotificationManager;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 133
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 137
    .local v10, "r":Landroid/content/res/Resources;
    iput-object v9, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd-HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "imageDate":Ljava/lang/String;
    const-string v0, "Screenshot_%s.png"

    const/4 v12, 0x1

    new-array v1, v12, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "Screenshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 144
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 147
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 148
    iget-object v0, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 149
    iget v13, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 150
    .local v13, "iconSize":I
    iget v14, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 151
    .local v14, "previewWidth":I
    iget v15, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 153
    .local v15, "previewHeight":I
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v6, v0

    .line 154
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    move-object v5, v0

    .line 155
    .local v5, "desat":Landroid/graphics/ColorMatrix;
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 156
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 157
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v4, v0

    .line 158
    .local v4, "matrix":Landroid/graphics/Matrix;
    const v16, 0x40ffffff    # 7.9999995f

    .line 160
    .local v16, "overlayColor":I
    iget v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v0, v14, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v1, v15, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 161
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v0, v7

    move v2, v14

    move v3, v15

    move-object/from16 v17, v4

    .line 161
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .local v17, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v18, v5

    move-object v5, v6

    .line 161
    .end local v5    # "desat":Landroid/graphics/ColorMatrix;
    .local v18, "desat":Landroid/graphics/ColorMatrix;
    move-object/from16 v19, v6

    move/from16 v6, v16

    .line 161
    .end local v6    # "paint":Landroid/graphics/Paint;
    .local v19, "paint":Landroid/graphics/Paint;
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 165
    .local v6, "picture":Landroid/graphics/Bitmap;
    int-to-float v0, v13

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 166
    .local v5, "scale":F
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 167
    .end local v17    # "matrix":Landroid/graphics/Matrix;
    .restart local v4    # "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v13

    iget v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v13

    iget v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object v0, v7

    move v2, v13

    move v3, v13

    .line 169
    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "matrix":Landroid/graphics/Matrix;
    move/from16 v20, v5

    move-object/from16 v5, v19

    .line 169
    .end local v5    # "scale":F
    .local v20, "scale":F
    move-object v12, v6

    move/from16 v6, v16

    .line 169
    .end local v6    # "picture":Landroid/graphics/Bitmap;
    .local v12, "picture":Landroid/graphics/Bitmap;
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    .local v0, "icon":Landroid/graphics/Bitmap;
    move-object/from16 v1, p3

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 176
    .local v2, "now":J
    new-instance v4, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 177
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    iput-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 180
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v4, v8, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    const v5, 0x7f11057b

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 183
    const v6, 0x7f08057f

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v6, "progress"

    .line 184
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 186
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 187
    const v5, 0x1060157

    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 189
    iget-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v6, 0x1

    invoke-static {v8, v4, v6}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 191
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v4, v8, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    const v6, 0x7f11057b

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 194
    const v6, 0x7f08057f

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 195
    invoke-virtual {v4, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 196
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 197
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 198
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 199
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 200
    iget-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 201
    iget-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v4, v6}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 203
    iget-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 204
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 203
    invoke-virtual {v4, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 214
    iget-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 216
    iget-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 217
    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "matrix"    # Landroid/graphics/Matrix;
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "color"    # I

    .line 225
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 226
    .local v0, "picture":Landroid/graphics/Picture;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    .line 227
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 228
    invoke-virtual {v1, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 229
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 230
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 114
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .param p1, "params"    # [Ljava/lang/Void;

    move-object/from16 v1, p0

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 236
    return-object v2

    .line 241
    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 243
    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 244
    .local v3, "context":Landroid/content/Context;
    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v4, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 245
    .local v4, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v5, v0

    .line 249
    .local v5, "r":Landroid/content/res/Resources;
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 253
    iget-wide v6, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 256
    .local v6, "dateSeconds":J
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v8, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "out":Ljava/io/OutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v4, v8, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 258
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 259
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 262
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 263
    .local v8, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 264
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string v10, "_data"

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v10, "title"

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v10, "_display_name"

    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v10, "datetaken"

    iget-wide v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v10, "date_added"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v10, "date_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v10, "mime_type"

    const-string v11, "image/png"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v10, "width"

    iget v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v10, "height"

    iget v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string v10, "_size"

    new-instance v11, Ljava/io/File;

    iget-object v12, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 277
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    iget-wide v13, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, "subjectDate":Ljava/lang/String;
    const-string v12, "Screenshot (%s)"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 279
    .local v12, "subject":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    .line 280
    .local v2, "sharingIntent":Landroid/content/Intent;
    const-string v14, "image/png"

    invoke-virtual {v2, v14}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v14, "android.intent.extra.STREAM"

    invoke-virtual {v2, v14, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    const-string v14, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {v2, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 290
    new-instance v14, Landroid/content/Intent;

    const-class v13, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotActionReceiver;

    invoke-direct {v14, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "android:screenshot_sharing_intent"

    .line 292
    invoke-virtual {v14, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 290
    const/high16 v14, 0x10000000

    invoke-static {v3, v15, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 294
    .local v13, "shareAction":Landroid/app/PendingIntent;
    new-instance v15, Landroid/app/Notification$Action$Builder;

    const v14, 0x1040602

    .line 296
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v0

    const v0, 0x7f080372

    invoke-direct {v15, v0, v14, v13}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 296
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v16, "out":Ljava/io/OutputStream;
    move-object v0, v15

    .line 297
    .local v0, "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 299
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.EDIT"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    .local v14, "editIntent":Landroid/content/Intent;
    const-string v15, "image/png"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-virtual {v14, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 302
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v17, v0

    const-class v0, Lcom/android/systemui/screenshot/GlobalScreenshot$ScreenshotActionReceiver;

    .line 306
    .end local v0    # "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    .local v17, "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-direct {v15, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android:screenshot_sharing_intent"

    .line 308
    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 306
    move-object/from16 v18, v2

    const/high16 v2, 0x10000000

    const/4 v15, 0x1

    invoke-static {v3, v15, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 310
    .end local v2    # "sharingIntent":Landroid/content/Intent;
    .local v0, "editAction":Landroid/app/PendingIntent;
    .local v18, "sharingIntent":Landroid/content/Intent;
    new-instance v2, Landroid/app/Notification$Action$Builder;

    const v15, 0x10405dc

    .line 312
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v19, v6

    const v6, 0x7f080371

    invoke-direct {v2, v6, v15, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 313
    .end local v6    # "dateSeconds":J
    .local v2, "editActionBuilder":Landroid/app/Notification$Action$Builder;
    .local v19, "dateSeconds":J
    iget-object v6, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 317
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/systemui/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    invoke-direct {v6, v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "android:screenshot_uri_id"

    .line 319
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x50000000

    .line 317
    const/4 v15, 0x0

    invoke-static {v3, v15, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 321
    .local v6, "deleteAction":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Action$Builder;

    const v15, 0x10401c1

    .line 323
    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v0

    const v0, 0x7f080370

    invoke-direct {v7, v0, v15, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 323
    .end local v0    # "editAction":Landroid/app/PendingIntent;
    .local v21, "editAction":Landroid/app/PendingIntent;
    move-object v0, v7

    .line 324
    .local v0, "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    iget-object v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 326
    iget-object v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iput-object v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 327
    iget-object v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const/4 v15, 0x0

    iput-object v15, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 328
    iget-object v7, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const/4 v15, 0x0

    iput v15, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "deleteActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v2    # "editActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v6    # "deleteAction":Landroid/app/PendingIntent;
    .end local v8    # "values":Landroid/content/ContentValues;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "subjectDate":Ljava/lang/String;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "shareAction":Landroid/app/PendingIntent;
    .end local v14    # "editIntent":Landroid/content/Intent;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v17    # "shareActionBuilder":Landroid/app/Notification$Action$Builder;
    .end local v18    # "sharingIntent":Landroid/content/Intent;
    .end local v19    # "dateSeconds":J
    .end local v21    # "editAction":Landroid/app/PendingIntent;
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SaveImageInBackgroundTask"

    const-string v6, "unable to save screenshot"

    invoke-static {v2, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    iget-object v2, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 334
    iget-object v2, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    const v6, 0x7f110576

    iput v6, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v4, :cond_1

    .line 339
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/Void;

    .line 396
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 402
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 114
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 12
    .param p1, "params"    # Ljava/lang/Void;

    .line 347
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget v2, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto/16 :goto_0

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 354
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 357
    .local v1, "r":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v2, "launchIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v3, v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v4, "image/png"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const v3, 0x10000001

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 365
    .local v3, "now":J
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 366
    const v6, 0x7f110579

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 367
    const v7, 0x7f110578

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v8, v8, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 368
    const/4 v9, 0x0

    invoke-static {v8, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 369
    invoke-virtual {v5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 370
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 371
    const v10, 0x1060157

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 373
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 374
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 375
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 376
    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 377
    invoke-virtual {v5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 378
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 379
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 381
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/16 v6, 0x20

    .line 382
    invoke-virtual {v5, v6, v9}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 384
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 385
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 384
    invoke-virtual {v5, v8, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 387
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    .end local v3    # "now":J
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 388
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 389
    return-void
.end method
