.class public Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.super Ljava/lang/Object;
.source "DozeMachine.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# instance fields
.field private final mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/systemui/doze/DozeMachine$Service;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    .line 377
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    .line 382
    return-void
.end method

.method public requestWakeUp()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeMachine$Service;->requestWakeUp()V

    .line 392
    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .line 396
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    .line 397
    return-void
.end method

.method public setDozeScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 386
    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(I)V

    .line 387
    return-void
.end method
