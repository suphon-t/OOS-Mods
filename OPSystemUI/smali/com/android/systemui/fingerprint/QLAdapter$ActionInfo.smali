.class public Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
.super Ljava/lang/Object;
.source "QLAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionInfo"
.end annotation


# instance fields
.field mActionName:Ljava/lang/String;

.field mAppIcon:Landroid/graphics/drawable/Drawable;

.field mLabel:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPaymentWhich:I

.field mQuickPayConfig:Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

.field mShortcutIcon:I

.field mShortcutId:Ljava/lang/String;

.field mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setShortcutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .line 164
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mUid:I

    .line 168
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ShortcutId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
