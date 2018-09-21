.class public Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;
.source "NotificationTemplateViewWrapper.java"


# instance fields
.field private mActions:Lcom/android/internal/widget/NotificationActionListLayout;

.field protected mActionsContainer:Landroid/view/View;

.field private mCancelledPendingIntents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeight:I

.field private mMinHeightHint:I

.field protected mPicture:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRemoteInputHistory:Landroid/view/View;

.field private mReplyAction:Landroid/widget/ImageView;

.field private mText:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)Lcom/android/systemui/UiOffloadThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-object v0
.end method

.method private blendColorWithBackground(IF)I
    .locals 4
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .line 214
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 215
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 214
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveBackgroundColor()I

    move-result v1

    .line 214
    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v0

    return v0
.end method

.method private isOnView(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 265
    .local v0, "searchView":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr p2, v1

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v2, p2

    float-to-int v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public static synthetic lambda$performOnPendingIntentCancellation$2(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "cancellationRunnable"    # Ljava/lang/Runnable;

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 231
    return-void
.end method

.method public static synthetic lambda$performOnPendingIntentCancellation$3(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "cancellationRunnable"    # Ljava/lang/Runnable;
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$xG2GQ4HDvuPqD0L-UzmtaSPeQy4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$xG2GQ4HDvuPqD0L-UzmtaSPeQy4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 232
    return-void
.end method

.method static synthetic lambda$performOnPendingIntentCancellation$4(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V
    .locals 0
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "listener"    # Landroid/app/PendingIntent$CancelListener;

    .line 237
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    return-void
.end method

.method public static synthetic lambda$updatePendingIntentCancellations$0(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/Button;)V
    .locals 6
    .param p1, "action"    # Landroid/widget/Button;

    .line 163
    invoke-virtual {p1}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    invoke-virtual {p1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 169
    .local v1, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v2

    .line 170
    .local v2, "colors":[I
    array-length v3, v2

    new-array v3, v3, [I

    .line 171
    .local v3, "newColors":[I
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050123

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 173
    .local v4, "disabledAlpha":F
    nop

    .local v0, "j":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 174
    aget v5, v2, v0

    .line 175
    .local v5, "color":I
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result v5

    .line 176
    aput v5, v3, v0

    .line 173
    .end local v5    # "color":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "j":I
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 179
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v5

    invoke-direct {v0, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 180
    .local v0, "newColorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    .end local v0    # "newColorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "textColors":Landroid/content/res/ColorStateList;
    .end local v2    # "colors":[I
    .end local v3    # "newColors":[I
    .end local v4    # "disabledAlpha":F
    :cond_1
    return-void
.end method

.method public static synthetic lambda$updatePendingIntentCancellations$1(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V
    .locals 6

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    nop

    .line 197
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    check-cast v1, Landroid/graphics/PorterDuffColorFilter;

    .line 198
    .local v1, "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 200
    .local v2, "disabledAlpha":F
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v3

    .line 202
    .local v3, "color":I
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->blendColorWithBackground(IF)I

    move-result v3

    .line 203
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 204
    .end local v3    # "color":I
    goto :goto_0

    .line 205
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 208
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "colorFilter":Landroid/graphics/PorterDuffColorFilter;
    .end local v2    # "disabledAlpha":F
    :cond_1
    :goto_0
    return-void
.end method

.method private performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cancellationRunnable"    # Ljava/lang/Runnable;

    .line 219
    const v0, 0x102036d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 221
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v0, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mCancelledPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;

    .local v1, "listener":Landroid/app/PendingIntent$CancelListener;
    invoke-direct {v1, p0, v0, p2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$CdGwp65qr_-MX4610o6pqFvZxIU;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 233
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    if-nez v2, :cond_2

    .line 234
    const-class v2, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/UiOffloadThread;

    iput-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 236
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$g3I4Kek7Jbtd7d61H8EguvhgrJw;

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$g3I4Kek7Jbtd7d61H8EguvhgrJw;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 239
    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Landroid/app/PendingIntent$CancelListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 251
    .end local v1    # "listener":Landroid/app/PendingIntent$CancelListener;
    :goto_0
    return-void
.end method

.method private resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x10203b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    const v1, 0x7f0a019e

    .line 138
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "progress":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    .line 144
    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102018c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/NotificationActionListLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x10203ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    const v2, 0x102033f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updatePendingIntentCancellations()V

    .line 155
    return-void
.end method

.method private updateActionOffset()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 326
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 329
    .local v0, "constrainedContentHeight":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->getHeaderTranslation()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 329
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 332
    .end local v0    # "constrainedContentHeight":I
    :cond_0
    return-void
.end method

.method private updatePendingIntentCancellations()V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildCount()I

    move-result v0

    .line 160
    .local v0, "numActions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 162
    .local v2, "action":Landroid/widget/Button;
    new-instance v3, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$oMwnxymrbNZg0qMyiDXpJrgotxQ;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;Landroid/widget/Button;)V

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 160
    .end local v2    # "action":Landroid/widget/Button;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "numActions":I
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$FtzUFjG_Gvdx031nKmSLXw7UiBg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/-$$Lambda$NotificationTemplateViewWrapper$FtzUFjG_Gvdx031nKmSLXw7UiBg;-><init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->performOnPendingIntentCancellation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 210
    :cond_1
    return-void
.end method


# virtual methods
.method public disallowSingleClick(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mReplyAction:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->disallowSingleClick(FF)Z

    move-result v0

    return v0
.end method

.method public getExtraMeasureHeight()I
    .locals 3

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "extra":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActions:Lcom/android/internal/widget/NotificationActionListLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/NotificationActionListLayout;->getExtraMeasureHeight()I

    move-result v0

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRemoteInputHistory:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->getExtraMeasureHeight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 279
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->resolveTemplateViews(Landroid/service/notification/StatusBarNotification;)V

    .line 280
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 281
    return-void
.end method

.method public setContentHeight(II)V
    .locals 0
    .param p1, "contentHeight"    # I
    .param p2, "minHeightHint"    # I

    .line 307
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->setContentHeight(II)V

    .line 309
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mContentHeight:I

    .line 310
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mMinHeightHint:I

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->updateActionOffset()V

    .line 312
    return-void
.end method

.method public shouldClipToRounding(ZZ)Z
    .locals 3
    .param p1, "topRounded"    # Z
    .param p2, "bottomRounded"    # Z

    .line 316
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->shouldClipToRounding(ZZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 317
    return v1

    .line 319
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 319
    :goto_0
    return v1
.end method

.method protected updateTransformedTypes()V
    .locals 3

    .line 286
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationHeaderViewWrapper;->updateTransformedTypes()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mPicture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 300
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(ILandroid/view/View;)V

    .line 303
    :cond_3
    return-void
.end method
