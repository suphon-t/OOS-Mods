.class public interface abstract Lcom/android/systemui/doze/DozeMachine$Part;
.super Ljava/lang/Object;
.source "DozeMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Part"
.end annotation


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 355
    return-void
.end method

.method public abstract transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
.end method
