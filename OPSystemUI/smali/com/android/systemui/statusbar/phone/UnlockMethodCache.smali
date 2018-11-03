.class public Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.super Ljava/lang/Object;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# instance fields
.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCanSkipBouncer:Z

.field private mFaceUnlockRunning:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecure:Z

.field private mTrustManaged:Z

.field private mTrusted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$1;-><init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 49
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 50
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 52
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .param p1, "x1"    # Z

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->update(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 59
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->sInstance:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method private notifyListeners()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 112
    .local v1, "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;->onUnlockMethodStateChanged()V

    .line 113
    .end local v1    # "listener":Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method private update(Z)V
    .locals 9
    .param p1, "updateAlways"    # Z

    .line 89
    const-string v0, "UnlockMethodCache#update"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 91
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    .line 92
    .local v1, "secure":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    .line 93
    .local v4, "canSkipBouncer":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    .line 94
    .local v5, "trustManaged":Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v6

    .line 95
    .local v6, "trusted":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceUnlockRunning(I)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v3

    .line 97
    .local v7, "faceUnlockRunning":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    if-ne v1, v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    if-ne v4, v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    if-ne v5, v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    if-eq v7, v8, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    nop

    .line 99
    .local v2, "changed":Z
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    if-eqz p1, :cond_6

    .line 100
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    .line 102
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    .line 104
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    .line 105
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->notifyListeners()V

    .line 107
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 108
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public canSkipBouncer()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mCanSkipBouncer:Z

    return v0
.end method

.method public isFaceUnlockRunning()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mFaceUnlockRunning:Z

    return v0
.end method

.method public isMethodSecure()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mSecure:Z

    return v0
.end method

.method public isTrustManaged()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrustManaged:Z

    return v0
.end method

.method public isTrusted()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->mTrusted:Z

    return v0
.end method
