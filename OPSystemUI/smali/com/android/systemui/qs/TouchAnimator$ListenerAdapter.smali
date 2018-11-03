.class public Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.super Ljava/lang/Object;
.source "TouchAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/TouchAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationAtEnd()V
    .locals 0

    .line 96
    return-void
.end method

.method public onAnimationAtStart()V
    .locals 0

    .line 93
    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .line 99
    return-void
.end method
