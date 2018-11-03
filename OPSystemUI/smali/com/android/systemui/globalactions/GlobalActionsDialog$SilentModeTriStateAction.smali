.class Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1223
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1224
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    .line 1225
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mContext:Landroid/content/Context;

    .line 1226
    return-void

    :array_0
    .array-data 4
        0x1020356
        0x1020357
        0x1020358
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .locals 0
    .param p1, "index"    # I

    .line 1235
    return p1
.end method

.method private ringerModeToIndex(I)I
    .locals 0
    .param p1, "ringerMode"    # I

    .line 1230
    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .line 1245
    const/4 v0, 0x0

    const v1, 0x109006c

    invoke-virtual {p4, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1247
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move-result v2

    .line 1248
    .local v2, "selectedIndex":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 1249
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1250
    .local v4, "itemView":Landroid/view/View;
    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1253
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1248
    .end local v4    # "itemView":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1255
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .line 1270
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1277
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    .line 1279
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1280
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->indexToRingerMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1281
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1282
    return-void
.end method

.method public onPress()V
    .locals 0

    .line 1259
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .line 1262
    const/4 v0, 0x1

    return v0
.end method
