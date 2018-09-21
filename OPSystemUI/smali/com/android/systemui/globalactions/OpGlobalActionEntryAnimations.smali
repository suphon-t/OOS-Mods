.class public Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;
.super Ljava/lang/Object;
.source "OpGlobalActionEntryAnimations.java"


# instance fields
.field private final mAdvShowAnimSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getAdvShowAnimSets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/AnimationSet;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;->mAdvShowAnimSets:Ljava/util/ArrayList;

    return-object v0
.end method
