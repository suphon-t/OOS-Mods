.class public Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;
.super Ljava/lang/Object;
.source "Parallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/Parallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyMarkerValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mProperty:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPropertyT;"
        }
    .end annotation
.end field


# virtual methods
.method public getProperty()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPropertyT;"
        }
    .end annotation

    .line 95
    .local p0, "this":Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;, "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue<TPropertyT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->mProperty:Ljava/lang/Object;

    return-object v0
.end method
