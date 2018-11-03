.class public interface abstract Landroidx/car/widget/IAlphaJumpAdapter;
.super Ljava/lang/Object;
.source "IAlphaJumpAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/widget/IAlphaJumpAdapter$Bucket;
    }
.end annotation


# virtual methods
.method public abstract getAlphaJumpBuckets()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/car/widget/IAlphaJumpAdapter$Bucket;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onAlphaJumpEnter()V
.end method

.method public abstract onAlphaJumpLeave(Landroidx/car/widget/IAlphaJumpAdapter$Bucket;)V
.end method
