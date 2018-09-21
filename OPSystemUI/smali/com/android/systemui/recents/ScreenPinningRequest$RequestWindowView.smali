.class Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;
.super Landroid/widget/FrameLayout;
.source "ScreenPinningRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestWindowView"
.end annotation


# instance fields
.field private final mColor:Landroid/graphics/drawable/ColorDrawable;

.field private mColorAnim:Landroid/animation/ValueAnimator;

.field private mLayout:Landroid/view/ViewGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowCancel:Z

.field private final mUpdateLayoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequest;Landroid/content/Context;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "showCancel"    # Z

    .line 152
    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 153
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    .line 340
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$2;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    .line 349
    new-instance v0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$3;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->setClickable(Z)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iput-boolean p3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    .line 158
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mUpdateLayoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private inflateView(I)V
    .locals 14
    .param p1, "rotation"    # I

    .line 219
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportCustomNavBar()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    if-ne p1, v1, :cond_0

    const v1, 0x7f0d01b7

    goto :goto_0

    .line 222
    :cond_0
    if-ne p1, v3, :cond_1

    const v1, 0x7f0d01b5

    goto :goto_0

    .line 223
    :cond_1
    const v1, 0x7f0d01b3

    .line 220
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    goto :goto_2

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    if-ne p1, v1, :cond_3

    const v1, 0x7f0d01b6

    goto :goto_1

    .line 228
    :cond_3
    if-ne p1, v3, :cond_4

    const v1, 0x7f0d01b4

    goto :goto_1

    .line 229
    :cond_4
    const v1, 0x7f0d01ac

    .line 226
    :goto_1
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    .line 234
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a0379

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x3

    .line 239
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a036e

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "buttons":Landroid/view/View;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 242
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/util/OPUtils;->isBackKeyRight(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 246
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_3

    .line 248
    :cond_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 251
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->swapChildrenIfRtlAndVertical(Landroid/view/View;)V

    goto :goto_4

    .line 253
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a0375

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 257
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-boolean v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mShowCancel:Z

    const v5, 0x7f0a036f

    const/4 v6, 0x4

    if-eqz v4, :cond_7

    .line 259
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    .line 260
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 262
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 263
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4, v5}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 268
    .local v4, "statusBar":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    nop

    .line 269
    .local v2, "navigationBarView":Lcom/android/systemui/statusbar/phone/NavigationBarView;
    :cond_8
    if-eqz v2, :cond_9

    .line 270
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    move v3, v1

    .line 271
    .local v3, "recentsVisible":Z
    :goto_6
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v5}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$200(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    .line 273
    .local v5, "touchExplorationEnabled":Z
    const v7, 0x7f0a0371

    const v8, 0x7f0a0372

    const v9, 0x7f0a0378

    if-eqz v3, :cond_b

    .line 274
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v8, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 277
    if-eqz v5, :cond_a

    .line 278
    const v7, 0x7f110563

    goto :goto_7

    .line 279
    :cond_a
    const v7, 0x7f110562

    .local v7, "descriptionStringResId":I
    :goto_7
    goto :goto_8

    .line 281
    .end local v7    # "descriptionStringResId":I
    :cond_b
    iget-object v10, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v9, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v8, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 284
    if-eqz v5, :cond_c

    .line 285
    const v7, 0x7f110565

    goto :goto_8

    .line 286
    :cond_c
    const v7, 0x7f110564

    .line 289
    .restart local v7    # "descriptionStringResId":I
    :goto_8
    if-eqz v2, :cond_d

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f04010a

    invoke-static {v8, v9}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v8

    .line 291
    .local v8, "dualToneDarkTheme":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f040242

    invoke-static {v9, v10}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v9

    .line 292
    .local v9, "dualToneLightTheme":I
    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 293
    .local v10, "lightContext":Landroid/content/Context;
    new-instance v11, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 294
    .local v11, "darkContext":Landroid/content/Context;
    iget-object v12, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v13, 0x7f0a036d

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 295
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v12, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v13, 0x7f0a0374

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 298
    invoke-virtual {v2, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeDrawable(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    .end local v8    # "dualToneDarkTheme":I
    .end local v9    # "dualToneLightTheme":I
    .end local v10    # "lightContext":Landroid/content/Context;
    .end local v11    # "darkContext":Landroid/content/Context;
    :cond_d
    iget-object v8, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v9, 0x7f0a0370

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 303
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 304
    if-eqz v5, :cond_e

    move v1, v6

    nop

    .line 305
    .local v1, "backBgVisibility":I
    :cond_e
    iget-object v6, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a036a

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v6, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a036b

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v6, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-virtual {v8, p1}, Lcom/android/systemui/recents/ScreenPinningRequest;->getRequestLayoutParams(I)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    return-void
.end method

.method private swapChildrenIfRtlAndVertical(Landroid/view/View;)V
    .locals 5
    .param p1, "group"    # Landroid/view/View;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    .line 317
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 318
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 319
    .local v1, "childCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 320
    .local v2, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 321
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 324
    add-int/lit8 v3, v1, -0x1

    .restart local v3    # "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 325
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 328
    .end local v1    # "childCount":I
    .end local v2    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 9

    .line 162
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 163
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recents/ScreenPinningRequest;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequest;->access$000(Lcom/android/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 164
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 165
    .local v1, "density":F
    iget-object v2, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v2

    .line 167
    .local v2, "rotation":I
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(I)V

    .line 168
    iget-object v3, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    const v4, 0x7f060437

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 170
    .local v3, "bgColor":I
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 172
    const/4 v4, 0x1

    const/4 v6, 0x2

    if-ne v2, v6, :cond_0

    .line 173
    iget-object v7, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    const/high16 v8, -0x3d400000    # -96.0f

    mul-float/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 174
    :cond_0
    const/high16 v7, 0x42c00000    # 96.0f

    if-ne v2, v4, :cond_1

    .line 175
    iget-object v8, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float/2addr v7, v1

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    mul-float/2addr v7, v1

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 179
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    .line 180
    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 181
    invoke-virtual {v7, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    .line 182
    invoke-virtual {v7, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v7, 0x12c

    .line 183
    invoke-virtual {v5, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 184
    invoke-virtual {v5, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 185
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 187
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    .line 188
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView$1;-><init>(Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 195
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 196
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColorAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 198
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 201
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v5, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 205
    return-void
.end method

.method protected onConfigurationChanged()V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->removeAllViews()V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->inflateView(I)V

    .line 338
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequest$RequestWindowView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    return-void
.end method
