.class public Lcom/android/systemui/globalactions/OpGlobalActions;
.super Ljava/lang/Object;
.source "OpGlobalActions.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/OpGlobalActions$Action;,
        Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;
    }
.end annotation


# static fields
.field public static RIPPLE_DELAY:I

.field public static mIsDetaching:Z

.field private static mState:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;


# instance fields
.field private mActionBootloader:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

.field private mActionReboot:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

.field private mActionRecovery:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

.field private mAnimations:Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/16 v0, 0xc8

    sput v0, Lcom/android/systemui/globalactions/OpGlobalActions;->RIPPLE_DELAY:I

    .line 81
    sget-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->INIT:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    sput-object v0, Lcom/android/systemui/globalactions/OpGlobalActions;->mState:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/globalactions/OpGlobalActions;->mIsDetaching:Z

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mActionReboot:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mAnimations:Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mActionReboot:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->getMyIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mActionRecovery:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mActionBootloader:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mActionRecovery:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->startAnimateShowAdv()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActions;->mActionBootloader:Lcom/android/systemui/globalactions/OpGlobalActionEntry;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->startAnimateShowAdv()V

    .line 134
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 170
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 122
    return-void
.end method
