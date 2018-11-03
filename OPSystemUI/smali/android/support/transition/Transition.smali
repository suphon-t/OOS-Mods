.class public abstract Landroid/support/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Transition$EpicenterCallback;,
        Landroid/support/transition/Transition$AnimationInfo;,
        Landroid/support/transition/Transition$TransitionListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/support/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroid/support/transition/TransitionSet;

.field private mPathMotion:Landroid/support/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroid/support/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroid/support/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 170
    new-instance v0, Landroid/support/transition/Transition$1;

    invoke-direct {v0}, Landroid/support/transition/Transition$1;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    .line 204
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 183
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 198
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 199
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 208
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 224
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 227
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 231
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 234
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 253
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 183
    iput-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 197
    new-instance v1, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 198
    iput-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    .line 199
    sget-object v1, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 208
    iput-object v0, p0, Landroid/support/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/transition/Transition;->mCanRemoveViews:Z

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 224
    iput v1, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 227
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 231
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 234
    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 253
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 274
    sget-object v0, Landroid/support/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 275
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    .line 276
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const-string v3, "duration"

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-static {v0, v2, v3, v5, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v5, v3

    .line 278
    .local v5, "duration":J
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_0

    .line 279
    invoke-virtual {p0, v5, v6}, Landroid/support/transition/Transition;->setDuration(J)Landroid/support/transition/Transition;

    .line 281
    :cond_0
    const-string v3, "startDelay"

    const/4 v9, 0x2

    invoke-static {v0, v2, v3, v9, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v3, v3

    .line 283
    .local v3, "startDelay":J
    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 284
    invoke-virtual {p0, v3, v4}, Landroid/support/transition/Transition;->setStartDelay(J)Landroid/support/transition/Transition;

    .line 286
    :cond_1
    const-string v7, "interpolator"

    invoke-static {v0, v2, v7, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 288
    .local v1, "resId":I
    if-lez v1, :cond_2

    .line 289
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/support/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 291
    :cond_2
    const-string v7, "matchOrder"

    const/4 v8, 0x3

    invoke-static {v0, v2, v7, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 293
    .local v7, "matchOrder":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 294
    invoke-static {v7}, Landroid/support/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/transition/Transition;->setMatchOrder([I)V

    .line 296
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    return-void
.end method

.method static synthetic access$000(Landroid/support/transition/Transition;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/transition/Transition;

    .line 119
    iget-object v0, p0, Landroid/support/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 643
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 644
    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 645
    .local v2, "start":Landroid/support/transition/TransitionValues;
    iget-object v4, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 646
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v2    # "start":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "i":I
    :cond_1
    nop

    .local v0, "i":I
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 653
    invoke-virtual {p2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 654
    .local v1, "end":Landroid/support/transition/TransitionValues;
    iget-object v2, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    iget-object v2, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v2, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    .end local v1    # "end":Landroid/support/transition/TransitionValues;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 659
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V
    .locals 9
    .param p0, "transitionValuesMaps"    # Landroid/support/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 1530
    iget-object v0, p0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1532
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 1533
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 1535
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1537
    :cond_0
    iget-object v2, p0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1540
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1541
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 1542
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1544
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1546
    :cond_2
    iget-object v3, p0, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_6

    .line 1550
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1551
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1552
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1553
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1554
    .local v5, "itemId":J
    iget-object v7, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_5

    .line 1556
    iget-object v7, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1557
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1558
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1559
    iget-object v8, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1561
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_4
    goto :goto_2

    .line 1562
    :cond_5
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1563
    iget-object v1, p0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1567
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_6
    :goto_2
    return-void
.end method

.method private static alreadyContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 527
    aget v0, p0, p1

    .line 528
    .local v0, "value":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 529
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    .line 530
    const/4 v1, 0x1

    return v1

    .line 528
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1597
    if-nez p1, :cond_0

    .line 1598
    return-void

    .line 1600
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1601
    .local v0, "id":I
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1602
    return-void

    .line 1604
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1605
    return-void

    .line 1607
    :cond_2
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1608
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1609
    .local v1, "numTypes":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1610
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1611
    return-void

    .line 1609
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1615
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1616
    new-instance v1, Landroid/support/transition/TransitionValues;

    invoke-direct {v1}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1617
    .local v1, "values":Landroid/support/transition/TransitionValues;
    iput-object p1, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1618
    if-eqz p2, :cond_5

    .line 1619
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_1

    .line 1621
    :cond_5
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1623
    :goto_1
    iget-object v3, v1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1625
    if-eqz p2, :cond_6

    .line 1626
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 1628
    :cond_6
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v3, p1, v1}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1631
    .end local v1    # "values":Landroid/support/transition/TransitionValues;
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1633
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1634
    return-void

    .line 1636
    :cond_8
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1637
    return-void

    .line 1639
    :cond_9
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 1640
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1641
    .local v1, "numTypes":I
    move v3, v2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_b

    .line 1642
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1643
    return-void

    .line 1641
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1647
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_b
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1648
    .local v1, "parent":Landroid/view/ViewGroup;
    nop

    .local v2, "i":I
    :goto_4
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 1649
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1648
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1652
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_c
    return-void
.end method

.method private static getRunningAnimators()Landroid/support/v4/util/ArrayMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 856
    sget-object v0, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/ArrayMap;

    .line 857
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_0

    .line 858
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 859
    sget-object v1, Landroid/support/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 861
    :cond_0
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .locals 2
    .param p0, "match"    # I

    .line 523
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z
    .locals 3
    .param p0, "oldValues"    # Landroid/support/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1861
    iget-object v0, p0, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1862
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1864
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 1866
    const/4 v2, 0x0

    .local v2, "changed":Z
    :goto_0
    goto :goto_2

    .line 1867
    .end local v2    # "changed":Z
    :cond_0
    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 1872
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1869
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1872
    .restart local v2    # "changed":Z
    :goto_2
    nop

    .line 1879
    return v2
.end method

.method private matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 590
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 591
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 592
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 593
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 594
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 595
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 597
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 598
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 599
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 543
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 544
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/TransitionValues;

    .line 546
    .local v2, "end":Landroid/support/transition/TransitionValues;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 547
    invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/TransitionValues;

    .line 548
    .local v3, "start":Landroid/support/transition/TransitionValues;
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroid/support/transition/TransitionValues;
    .end local v3    # "start":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 563
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    .line 564
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 565
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 566
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    invoke-virtual {p3, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 568
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 569
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 570
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 571
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 572
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 617
    .local p1, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 618
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 619
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 620
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 622
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 623
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/TransitionValues;

    .line 624
    .local v4, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 625
    .local v5, "endValues":Landroid/support/transition/TransitionValues;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 626
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    iget-object v6, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {p1, v2}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-virtual {p2, v3}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v5    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V
    .locals 5
    .param p1, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValuesMaps;

    .line 663
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    iget-object v1, p1, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 664
    .local v0, "unmatchedStart":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    iget-object v2, p2, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/support/v4/util/ArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 666
    .local v1, "unmatchedEnd":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/support/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 667
    iget-object v3, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 680
    :pswitch_0
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchItemIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/LongSparseArray;Landroid/support/v4/util/LongSparseArray;)V

    goto :goto_1

    .line 676
    :pswitch_1
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchIds(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 678
    goto :goto_1

    .line 672
    :pswitch_2
    iget-object v3, p1, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    iget-object v4, p2, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/transition/Transition;->matchNames(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 674
    goto :goto_1

    .line 669
    :pswitch_3
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchInstances(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 670
    nop

    .line 666
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->addUnmatched(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V

    .line 686
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .locals 7
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 304
    .local v1, "matches":[I
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .line 305
    .local v1, "index":I
    .local v3, "matches":[I
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 306
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, "token":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 308
    const/4 v5, 0x3

    aput v5, v3, v1

    goto :goto_1

    .line 309
    :cond_0
    const-string v5, "instance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    aput v6, v3, v1

    goto :goto_1

    .line 311
    :cond_1
    const-string v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    const/4 v5, 0x2

    aput v5, v3, v1

    goto :goto_1

    .line 313
    :cond_2
    const-string v5, "itemId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    const/4 v5, 0x4

    aput v5, v3, v1

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 317
    array-length v5, v3

    sub-int/2addr v5, v6

    new-array v5, v5, [I

    .line 318
    .local v5, "smallerMatches":[I
    invoke-static {v3, v2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    move-object v3, v5

    .line 320
    add-int/lit8 v1, v1, -0x1

    .line 321
    .end local v5    # "smallerMatches":[I
    nop

    .line 324
    :goto_1
    add-int/2addr v1, v6

    .line 325
    .end local v4    # "token":Ljava/lang/String;
    goto :goto_0

    .line 322
    .restart local v4    # "token":Ljava/lang/String;
    :cond_4
    new-instance v2, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    .end local v4    # "token":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 893
    .local p2, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_0

    .line 895
    new-instance v0, Landroid/support/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/Transition$2;-><init>(Landroid/support/transition/Transition;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 907
    invoke-virtual {p0, p1}, Landroid/support/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 909
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;

    .line 2032
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2035
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2036
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 997
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1894
    if-nez p1, :cond_0

    .line 1895
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    goto :goto_0

    .line 1897
    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1898
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1900
    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1901
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1903
    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1904
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1906
    :cond_3
    new-instance v0, Landroid/support/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/support/transition/Transition$3;-><init>(Landroid/support/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1913
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1915
    :goto_0
    return-void
.end method

.method public abstract captureEndValues(Landroid/support/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroid/support/transition/TransitionValues;)V
    .locals 5
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 2179
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2180
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2181
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2182
    return-void

    .line 2184
    :cond_0
    const/4 v1, 0x1

    .line 2185
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2186
    iget-object v3, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2187
    const/4 v1, 0x0

    .line 2188
    goto :goto_1

    .line 2185
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2191
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2192
    iget-object v2, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroid/support/transition/TransitionPropagation;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 2195
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_3
    return-void
.end method

.method public abstract captureStartValues(Landroid/support/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1467
    invoke-virtual {p0, p2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 1468
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1469
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1509
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_7

    .line 1471
    :cond_3
    :goto_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1472
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1473
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1474
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_6

    .line 1475
    new-instance v4, Landroid/support/transition/TransitionValues;

    invoke-direct {v4}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1476
    .local v4, "values":Landroid/support/transition/TransitionValues;
    iput-object v3, v4, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1477
    if-eqz p2, :cond_4

    .line 1478
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_2

    .line 1480
    :cond_4
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1482
    :goto_2
    iget-object v5, v4, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    invoke-virtual {p0, v4}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1484
    if-eqz p2, :cond_5

    .line 1485
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v5, v3, v4}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_3

    .line 1487
    :cond_5
    iget-object v5, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v5, v3, v4}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1471
    .end local v2    # "id":I
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "values":Landroid/support/transition/TransitionValues;
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1491
    .end local v0    # "i":I
    :cond_7
    move v0, v1

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_a

    .line 1492
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1493
    .local v2, "view":Landroid/view/View;
    new-instance v3, Landroid/support/transition/TransitionValues;

    invoke-direct {v3}, Landroid/support/transition/TransitionValues;-><init>()V

    .line 1494
    .local v3, "values":Landroid/support/transition/TransitionValues;
    iput-object v2, v3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 1495
    if-eqz p2, :cond_8

    .line 1496
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    goto :goto_5

    .line 1498
    :cond_8
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 1500
    :goto_5
    iget-object v4, v3, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    invoke-virtual {p0, v3}, Landroid/support/transition/Transition;->capturePropagationValues(Landroid/support/transition/TransitionValues;)V

    .line 1502
    if-eqz p2, :cond_9

    .line 1503
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    goto :goto_6

    .line 1505
    :cond_9
    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroid/support/transition/Transition;->addViewValues(Landroid/support/transition/TransitionValuesMaps;Landroid/view/View;Landroid/support/transition/TransitionValues;)V

    .line 1491
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroid/support/transition/TransitionValues;
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1511
    .end local v0    # "i":I
    :cond_a
    :goto_7
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_d

    .line 1512
    iget-object v0, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 1513
    .local v0, "numOverrides":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1514
    .local v2, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move v3, v1

    .local v3, "i":I
    :goto_8
    if-ge v3, v0, :cond_b

    .line 1515
    iget-object v4, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1516
    .local v4, "fromName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    .end local v4    # "fromName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1518
    .end local v3    # "i":I
    :cond_b
    nop

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_d

    .line 1519
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1520
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_c

    .line 1521
    iget-object v4, p0, Landroid/support/transition/Transition;->mNameOverrides:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1522
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroid/support/transition/TransitionValuesMaps;->mNameValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1526
    .end local v0    # "numOverrides":I
    .end local v1    # "i":I
    .end local v2    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_d
    return-void
.end method

.method clearValues(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 1575
    if-eqz p1, :cond_0

    .line 1576
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1577
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1578
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    goto :goto_0

    .line 1580
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1581
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1582
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 1584
    :goto_0
    return-void
.end method

.method public clone()Landroid/support/transition/Transition;
    .locals 3

    .line 2214
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/Transition;

    .line 2215
    .local v1, "clone":Landroid/support/transition/Transition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2216
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2217
    new-instance v2, Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/support/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 2218
    iput-object v0, v1, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2219
    iput-object v0, v1, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2220
    return-object v1

    .line 2221
    .end local v1    # "clone":Landroid/support/transition/Transition;
    :catch_0
    move-exception v1

    .line 2222
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroid/support/transition/Transition;->clone()Landroid/support/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 485
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Landroid/support/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/support/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 706
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v8

    .line 707
    .local v8, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 708
    .local v0, "minStartDelay":J
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v2

    .line 709
    .local v9, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 710
    .local v10, "startValuesListCount":I
    move-wide v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "minStartDelay":J
    :goto_0
    move v12, v0

    .end local v0    # "i":I
    .local v12, "i":I
    if-ge v12, v10, :cond_f

    .line 711
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/TransitionValues;

    .line 712
    .local v0, "start":Landroid/support/transition/TransitionValues;
    move-object/from16 v14, p5

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 713
    .local v1, "end":Landroid/support/transition/TransitionValues;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 714
    const/4 v0, 0x0

    .line 716
    .end local v0    # "start":Landroid/support/transition/TransitionValues;
    .local v15, "start":Landroid/support/transition/TransitionValues;
    :cond_0
    move-object v15, v0

    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/support/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 717
    const/4 v1, 0x0

    .line 719
    .end local v1    # "end":Landroid/support/transition/TransitionValues;
    .local v5, "end":Landroid/support/transition/TransitionValues;
    :cond_1
    move-object v5, v1

    if-nez v15, :cond_2

    if-nez v5, :cond_2

    .line 720
    nop

    .line 710
    move/from16 v19, v10

    move/from16 v22, v12

    goto/16 :goto_8

    .line 723
    :cond_2
    if-eqz v15, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v6, v15, v5}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move/from16 v16, v0

    .line 724
    .local v16, "isChanged":Z
    if-eqz v16, :cond_d

    .line 743
    invoke-virtual {v6, v7, v15, v5}, Landroid/support/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 744
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_d

    .line 747
    const/4 v1, 0x0

    .line 748
    .local v1, "infoValues":Landroid/support/transition/TransitionValues;
    if-eqz v5, :cond_b

    .line 749
    iget-object v4, v5, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 750
    .local v4, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v11

    .line 751
    .local v11, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_9

    if-eqz v11, :cond_9

    move-object/from16 v18, v0

    array-length v0, v11

    .end local v0    # "animator":Landroid/animation/Animator;
    .local v18, "animator":Landroid/animation/Animator;
    if-lez v0, :cond_8

    .line 752
    new-instance v0, Landroid/support/transition/TransitionValues;

    invoke-direct {v0}, Landroid/support/transition/TransitionValues;-><init>()V

    move-object v1, v0

    .line 753
    iput-object v4, v1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    .line 754
    move-object/from16 v0, p3

    move/from16 v19, v10

    iget-object v10, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    .end local v10    # "startValuesListCount":I
    .local v19, "startValuesListCount":I
    invoke-virtual {v10, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/transition/TransitionValues;

    .line 755
    .local v10, "newValues":Landroid/support/transition/TransitionValues;
    if-eqz v10, :cond_5

    .line 756
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_3
    move/from16 v21, v20

    .end local v20    # "j":I
    .local v21, "j":I
    array-length v0, v11

    move/from16 v13, v21

    if-ge v13, v0, :cond_5

    .line 757
    .end local v21    # "j":I
    .local v13, "j":I
    iget-object v0, v1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v14, v11, v13

    move/from16 v22, v12

    iget-object v12, v10, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    .end local v12    # "i":I
    .local v22, "i":I
    move-object/from16 v23, v10

    aget-object v10, v11, v13

    .line 758
    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .local v23, "newValues":Landroid/support/transition/TransitionValues;
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 757
    invoke-interface {v0, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    add-int/lit8 v20, v13, 0x1

    .end local v13    # "j":I
    .restart local v20    # "j":I
    move/from16 v12, v22

    move-object/from16 v10, v23

    move-object/from16 v0, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    goto :goto_3

    .line 761
    .end local v20    # "j":I
    .end local v22    # "i":I
    .end local v23    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .restart local v12    # "i":I
    :cond_5
    move-object/from16 v23, v10

    move/from16 v22, v12

    .end local v10    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v12    # "i":I
    .restart local v22    # "i":I
    .restart local v23    # "newValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {v8}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    .line 762
    .local v0, "numExistingAnims":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    if-ge v10, v0, :cond_a

    .line 763
    invoke-virtual {v8, v10}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/animation/Animator;

    .line 764
    .local v12, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v12}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/transition/Transition$AnimationInfo;

    .line 765
    .local v13, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v14, v13, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    if-eqz v14, :cond_6

    iget-object v14, v13, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v14, v4, :cond_6

    iget-object v14, v13, Landroid/support/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 766
    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "numExistingAnims":I
    .local v24, "numExistingAnims":I
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 767
    iget-object v0, v13, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    invoke-virtual {v0, v1}, Landroid/support/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 769
    const/4 v0, 0x0

    .line 770
    .end local v18    # "animator":Landroid/animation/Animator;
    .local v0, "animator":Landroid/animation/Animator;
    goto :goto_6

    .line 762
    .end local v12    # "anim":Landroid/animation/Animator;
    .end local v13    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v24    # "numExistingAnims":I
    .local v0, "numExistingAnims":I
    .restart local v18    # "animator":Landroid/animation/Animator;
    :cond_6
    move/from16 v24, v0

    .end local v0    # "numExistingAnims":I
    .restart local v24    # "numExistingAnims":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v24

    goto :goto_4

    .line 775
    .end local v11    # "properties":[Ljava/lang/String;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .end local v23    # "newValues":Landroid/support/transition/TransitionValues;
    .end local v24    # "numExistingAnims":I
    .local v10, "startValuesListCount":I
    .local v12, "i":I
    :cond_8
    move/from16 v19, v10

    move/from16 v22, v12

    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    goto :goto_5

    .end local v18    # "animator":Landroid/animation/Animator;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .local v0, "animator":Landroid/animation/Animator;
    .restart local v10    # "startValuesListCount":I
    .restart local v12    # "i":I
    :cond_9
    move-object/from16 v18, v0

    move/from16 v19, v10

    move/from16 v22, v12

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v18    # "animator":Landroid/animation/Animator;
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    :cond_a
    :goto_5
    move-object/from16 v0, v18

    .line 776
    .end local v18    # "animator":Landroid/animation/Animator;
    .restart local v0    # "animator":Landroid/animation/Animator;
    :goto_6
    move-object v10, v0

    move-object v11, v1

    move-object v1, v4

    goto :goto_7

    .end local v4    # "view":Landroid/view/View;
    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v12    # "i":I
    :cond_b
    move-object/from16 v18, v0

    move/from16 v19, v10

    move/from16 v22, v12

    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v18    # "animator":Landroid/animation/Animator;
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    iget-object v0, v15, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v1

    move-object/from16 v10, v18

    move-object v1, v0

    .line 778
    .end local v18    # "animator":Landroid/animation/Animator;
    .local v1, "view":Landroid/view/View;
    .local v10, "animator":Landroid/animation/Animator;
    .local v11, "infoValues":Landroid/support/transition/TransitionValues;
    :goto_7
    if-eqz v10, :cond_e

    .line 779
    iget-object v0, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    if-eqz v0, :cond_c

    .line 780
    iget-object v0, v6, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    invoke-virtual {v0, v7, v6, v15, v5}, Landroid/support/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J

    move-result-wide v12

    .line 781
    .local v12, "delay":J
    iget-object v0, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    long-to-int v4, v12

    invoke-virtual {v9, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 784
    .end local v2    # "minStartDelay":J
    .local v12, "minStartDelay":J
    :cond_c
    move-wide v12, v2

    new-instance v14, Landroid/support/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 785
    invoke-static/range {p1 .. p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v4

    move-object v0, v14

    move-object v3, v6

    move-object/from16 v18, v5

    move-object v5, v11

    .end local v5    # "end":Landroid/support/transition/TransitionValues;
    .local v18, "end":Landroid/support/transition/TransitionValues;
    invoke-direct/range {v0 .. v5}, Landroid/support/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/Transition;Landroid/support/transition/WindowIdImpl;Landroid/support/transition/TransitionValues;)V

    .line 786
    .local v0, "info":Landroid/support/transition/Transition$AnimationInfo;
    invoke-virtual {v8, v10, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-object v2, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v0    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v1    # "view":Landroid/view/View;
    .end local v10    # "animator":Landroid/animation/Animator;
    .end local v11    # "infoValues":Landroid/support/transition/TransitionValues;
    .end local v15    # "start":Landroid/support/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .end local v18    # "end":Landroid/support/transition/TransitionValues;
    move-wide v2, v12

    goto :goto_8

    .end local v19    # "startValuesListCount":I
    .end local v22    # "i":I
    .restart local v2    # "minStartDelay":J
    .local v10, "startValuesListCount":I
    .local v12, "i":I
    :cond_d
    move/from16 v19, v10

    move/from16 v22, v12

    .end local v10    # "startValuesListCount":I
    .end local v12    # "i":I
    .restart local v19    # "startValuesListCount":I
    .restart local v22    # "i":I
    :cond_e
    :goto_8
    add-int/lit8 v0, v22, 0x1

    .end local v22    # "i":I
    .local v0, "i":I
    move/from16 v10, v19

    goto/16 :goto_0

    .line 792
    .end local v0    # "i":I
    .end local v19    # "startValuesListCount":I
    .restart local v10    # "startValuesListCount":I
    :cond_f
    move/from16 v19, v10

    .end local v10    # "startValuesListCount":I
    .restart local v19    # "startValuesListCount":I
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_10

    .line 793
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_9
    move/from16 v0, v17

    .end local v17    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 794
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 795
    .local v1, "index":I
    iget-object v4, v6, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 796
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-long v10, v5

    sub-long/2addr v10, v2

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 797
    .local v10, "delay":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 793
    .end local v1    # "index":I
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v10    # "delay":J
    add-int/lit8 v17, v0, 0x1

    .end local v0    # "i":I
    .restart local v17    # "i":I
    goto :goto_9

    .line 800
    .end local v17    # "i":I
    :cond_10
    return-void
.end method

.method protected end()V
    .locals 6

    .line 1953
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1954
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_5

    .line 1955
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1956
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1957
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1958
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1959
    .local v3, "numListeners":I
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 1960
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/support/transition/Transition;)V

    .line 1959
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1963
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v3    # "numListeners":I
    .end local v4    # "i":I
    :cond_0
    move v0, v2

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1964
    iget-object v3, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1965
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1966
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1963
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1969
    .end local v0    # "i":I
    :cond_2
    move v0, v2

    .restart local v0    # "i":I
    :goto_2
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1970
    iget-object v3, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v3, v3, Landroid/support/transition/TransitionValuesMaps;->mItemIdValues:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1971
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1972
    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1969
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1975
    .end local v0    # "i":I
    :cond_4
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1977
    :cond_5
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 353
    iget-wide v0, p0, Landroid/support/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .locals 1

    .line 2136
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_0

    .line 2137
    const/4 v0, 0x0

    return-object v0

    .line 2139
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/support/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/support/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroid/support/transition/Transition$EpicenterCallback;
    .locals 1

    .line 2123
    iget-object v0, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .line 408
    iget-object v0, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1681
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1684
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1685
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1686
    return-object v1

    .line 1688
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1689
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1690
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1691
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/TransitionValues;

    .line 1692
    .local v5, "values":Landroid/support/transition/TransitionValues;
    if-nez v5, :cond_3

    .line 1693
    return-object v1

    .line 1695
    :cond_3
    iget-object v6, v5, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_4

    .line 1696
    move v3, v4

    .line 1697
    goto :goto_2

    .line 1690
    .end local v5    # "values":Landroid/support/transition/TransitionValues;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1700
    .end local v4    # "i":I
    :cond_5
    :goto_2
    const/4 v1, 0x0

    .line 1701
    .local v1, "values":Landroid/support/transition/TransitionValues;
    if-ltz v3, :cond_7

    .line 1702
    if-eqz p2, :cond_6

    iget-object v4, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1703
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :goto_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/support/transition/TransitionValues;

    .line 1705
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/TransitionValues;>;"
    :cond_7
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2240
    iget-object v0, p0, Landroid/support/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroid/support/transition/PathMotion;
    .locals 1

    .line 2093
    iget-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/support/transition/TransitionPropagation;
    .locals 1

    .line 2171
    iget-object v0, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 380
    iget-wide v0, p0, Landroid/support/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1411
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1455
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1425
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 434
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1662
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Landroid/support/transition/Transition;->mParent:Landroid/support/transition/TransitionSet;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1665
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    .line 1666
    .local v0, "valuesMaps":Landroid/support/transition/TransitionValuesMaps;
    :goto_0
    iget-object v1, v0, Landroid/support/transition/TransitionValuesMaps;->mViewValues:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/TransitionValues;

    return-object v1
.end method

.method public isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 6
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 1835
    const/4 v0, 0x0

    .line 1838
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1839
    invoke-virtual {p0}, Landroid/support/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1840
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1841
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 1842
    .local v4, "property":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1843
    const/4 v0, 0x1

    .line 1844
    goto :goto_2

    .line 1841
    .end local v4    # "property":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1848
    :cond_1
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1849
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroid/support/transition/Transition;->isValueChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1850
    const/4 v0, 0x1

    .line 1851
    goto :goto_2

    .line 1853
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 1856
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_3
    :goto_2
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .locals 6
    .param p1, "target"    # Landroid/view/View;

    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 814
    .local v0, "targetId":I
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    return v2

    .line 817
    :cond_0
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    return v2

    .line 820
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 821
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 822
    .local v1, "numTypes":I
    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 823
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 824
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 825
    return v2

    .line 822
    .end local v4    # "type":Ljava/lang/Class;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 829
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_3
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 830
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 831
    return v2

    .line 834
    :cond_4
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 835
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 837
    :cond_6
    return v3

    .line 839
    :cond_7
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 842
    :cond_8
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 843
    return v3

    .line 845
    :cond_9
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 846
    move v1, v2

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 847
    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 848
    return v3

    .line 846
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 852
    .end local v1    # "i":I
    :cond_b
    return v2

    .line 840
    :cond_c
    :goto_2
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1717
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    if-nez v0, :cond_3

    .line 1718
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1719
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1720
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1721
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1722
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$AnimationInfo;

    .line 1723
    .local v4, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1724
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1725
    .local v5, "anim":Landroid/animation/Animator;
    invoke-static {v5}, Landroid/support/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    .line 1721
    .end local v4    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1728
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1729
    iget-object v3, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1730
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1731
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1732
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 1733
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionPause(Landroid/support/transition/Transition;)V

    .line 1732
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1736
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1738
    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroid/support/transition/WindowIdImpl;
    :cond_3
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .locals 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1782
    iget-object v0, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/Transition;->matchStartAndEnd(Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;)V

    .line 1784
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1785
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    .line 1786
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v2

    .line 1787
    .local v2, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 1788
    invoke-virtual {v0, v3}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1789
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_4

    .line 1790
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$AnimationInfo;

    .line 1791
    .local v5, "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_4

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    .line 1792
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1793
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mValues:Landroid/support/transition/TransitionValues;

    .line 1794
    .local v6, "oldValues":Landroid/support/transition/TransitionValues;
    iget-object v7, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1795
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/support/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v9

    .line 1796
    .local v9, "startValues":Landroid/support/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroid/support/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/support/transition/TransitionValues;

    move-result-object v10

    .line 1797
    .local v10, "endValues":Landroid/support/transition/TransitionValues;
    if-nez v9, :cond_0

    if-eqz v10, :cond_1

    :cond_0
    iget-object v11, v5, Landroid/support/transition/Transition$AnimationInfo;->mTransition:Landroid/support/transition/Transition;

    .line 1798
    invoke-virtual {v11, v6, v10}, Landroid/support/transition/Transition;->isTransitionRequired(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 1799
    .local v8, "cancel":Z
    :goto_1
    if-eqz v8, :cond_4

    .line 1800
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    .line 1809
    :cond_2
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/support/transition/TransitionValues;
    goto :goto_3

    .line 1804
    .restart local v4    # "anim":Landroid/animation/Animator;
    .restart local v5    # "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    .restart local v6    # "oldValues":Landroid/support/transition/TransitionValues;
    .restart local v7    # "oldView":Landroid/view/View;
    .restart local v8    # "cancel":Z
    .restart local v9    # "startValues":Landroid/support/transition/TransitionValues;
    .restart local v10    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_3
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1787
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroid/support/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroid/support/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroid/support/transition/TransitionValues;
    .end local v10    # "endValues":Landroid/support/transition/TransitionValues;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1816
    .end local v3    # "i":I
    :cond_5
    iget-object v6, p0, Landroid/support/transition/Transition;->mStartValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroid/support/transition/Transition;->mEndValues:Landroid/support/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroid/support/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/support/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValuesMaps;Landroid/support/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1817
    invoke-virtual {p0}, Landroid/support/transition/Transition;->runAnimators()V

    .line 1818
    return-void
.end method

.method public removeListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "listener"    # Landroid/support/transition/Transition$TransitionListener;

    .line 2048
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2049
    return-object p0

    .line 2051
    :cond_0
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2052
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2055
    :cond_1
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/support/transition/Transition;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .line 1095
    iget-object v0, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1096
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 8
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1749
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_3

    .line 1750
    iget-boolean v0, p0, Landroid/support/transition/Transition;->mEnded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1751
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 1752
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v2

    .line 1753
    .local v2, "numOldAnims":I
    invoke-static {p1}, Landroid/support/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;

    move-result-object v3

    .line 1754
    .local v3, "windowId":Landroid/support/transition/WindowIdImpl;
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1755
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/transition/Transition$AnimationInfo;

    .line 1756
    .local v5, "info":Landroid/support/transition/Transition$AnimationInfo;
    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/support/transition/Transition$AnimationInfo;->mWindowId:Landroid/support/transition/WindowIdImpl;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1757
    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/animation/Animator;

    .line 1758
    .local v6, "anim":Landroid/animation/Animator;
    invoke-static {v6}, Landroid/support/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    .line 1754
    .end local v5    # "info":Landroid/support/transition/Transition$AnimationInfo;
    .end local v6    # "anim":Landroid/animation/Animator;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1761
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1762
    iget-object v4, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1763
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1764
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1765
    .local v5, "numListeners":I
    move v6, v1

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_2

    .line 1766
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v7, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionResume(Landroid/support/transition/Transition;)V

    .line 1765
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1770
    .end local v0    # "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    .end local v2    # "numOldAnims":I
    .end local v3    # "windowId":Landroid/support/transition/WindowIdImpl;
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v5    # "numListeners":I
    .end local v6    # "i":I
    :cond_2
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mPaused:Z

    .line 1772
    :cond_3
    return-void
.end method

.method protected runAnimators()V
    .locals 4

    .line 875
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 876
    invoke-static {}, Landroid/support/transition/Transition;->getRunningAnimators()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 878
    .local v0, "runningAnimators":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/animation/Animator;Landroid/support/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 882
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/support/transition/Transition;->start()V

    .line 884
    invoke-direct {p0, v2, v0}, Landroid/support/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroid/support/v4/util/ArrayMap;)V

    .line 886
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_0
    goto :goto_0

    .line 887
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 888
    invoke-virtual {p0}, Landroid/support/transition/Transition;->end()V

    .line 889
    return-void
.end method

.method public setDuration(J)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "duration"    # J

    .line 340
    iput-wide p1, p0, Landroid/support/transition/Transition;->mDuration:J

    .line 341
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/support/transition/Transition$EpicenterCallback;)V
    .locals 0
    .param p1, "epicenterCallback"    # Landroid/support/transition/Transition$EpicenterCallback;

    .line 2108
    iput-object p1, p0, Landroid/support/transition/Transition;->mEpicenterCallback:Landroid/support/transition/Transition$EpicenterCallback;

    .line 2109
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 394
    iput-object p1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 395
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .locals 4
    .param p1, "matches"    # [I

    .line 506
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 509
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 510
    aget v1, p1, v0

    .line 511
    .local v1, "match":I
    invoke-static {v1}, Landroid/support/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-static {p1, v0}, Landroid/support/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 509
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    .restart local v1    # "match":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    goto :goto_2

    .line 507
    :cond_4
    :goto_1
    sget-object v0, Landroid/support/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroid/support/transition/Transition;->mMatchOrder:[I

    .line 520
    :goto_2
    return-void
.end method

.method public setPathMotion(Landroid/support/transition/PathMotion;)V
    .locals 1
    .param p1, "pathMotion"    # Landroid/support/transition/PathMotion;

    .line 2075
    if-nez p1, :cond_0

    .line 2076
    sget-object v0, Landroid/support/transition/Transition;->STRAIGHT_PATH_MOTION:Landroid/support/transition/PathMotion;

    iput-object v0, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    goto :goto_0

    .line 2078
    :cond_0
    iput-object p1, p0, Landroid/support/transition/Transition;->mPathMotion:Landroid/support/transition/PathMotion;

    .line 2080
    :goto_0
    return-void
.end method

.method public setPropagation(Landroid/support/transition/TransitionPropagation;)V
    .locals 0
    .param p1, "transitionPropagation"    # Landroid/support/transition/TransitionPropagation;

    .line 2154
    iput-object p1, p0, Landroid/support/transition/Transition;->mPropagation:Landroid/support/transition/TransitionPropagation;

    .line 2155
    return-void
.end method

.method public setStartDelay(J)Landroid/support/transition/Transition;
    .locals 0
    .param p1, "startDelay"    # J

    .line 367
    iput-wide p1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    .line 368
    return-object p0
.end method

.method protected start()V
    .locals 5

    .line 1926
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_1

    .line 1927
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1928
    iget-object v0, p0, Landroid/support/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1929
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1930
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1931
    .local v2, "numListeners":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1932
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/support/transition/Transition$TransitionListener;->onTransitionStart(Landroid/support/transition/Transition;)V

    .line 1931
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1935
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_0
    iput-boolean v1, p0, Landroid/support/transition/Transition;->mEnded:Z

    .line 1937
    :cond_1
    iget v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/Transition;->mNumInstances:I

    .line 1938
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2208
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "indent"    # Ljava/lang/String;

    .line 2244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2246
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroid/support/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dur("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroid/support/transition/Transition;->mDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2249
    :cond_0
    iget-wide v1, p0, Landroid/support/transition/Transition;->mStartDelay:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 2250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dly("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2252
    :cond_1
    iget-object v1, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_2

    .line 2253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "interp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2255
    :cond_2
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 2256
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2257
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_6

    .line 2258
    move-object v1, v0

    move v0, v2

    .line 2258
    .local v0, "i":I
    .local v1, "result":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 2259
    if-lez v0, :cond_4

    .line 2260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2262
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/support/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2265
    .end local v0    # "i":I
    :cond_5
    move-object v0, v1

    .line 2265
    .end local v1    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 2266
    nop

    .line 2266
    .local v2, "i":I
    :goto_1
    move v1, v2

    .line 2266
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2267
    if-lez v1, :cond_7

    .line 2268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2270
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2266
    add-int/lit8 v2, v1, 0x1

    .line 2266
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 2273
    .end local v2    # "i":I
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2275
    :cond_9
    return-object v0
.end method
