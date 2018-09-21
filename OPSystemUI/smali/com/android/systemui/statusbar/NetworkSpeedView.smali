.class public Lcom/android/systemui/statusbar/NetworkSpeedView;
.super Landroid/widget/TextView;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NetworkSpeedController$INetworkSpeedStateCallBack;


# instance fields
.field private mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 50
    const-class v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->addCallback(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 64
    const v0, 0x7f0705f2

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 65
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 58
    const-class v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mNetworkSpeedController:Lcom/android/systemui/statusbar/phone/NetworkSpeedController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/NetworkSpeedController;->removeCallback(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onSpeedChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "speed"    # Ljava/lang/String;

    .line 39
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mText:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_0
    return-void
.end method
