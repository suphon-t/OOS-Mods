.class public Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
.super Ljava/lang/Object;
.source "TunablePadding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunablePadding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TunablePaddingService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultSize"    # I
    .param p4, "flags"    # I

    .line 73
    if-eqz p1, :cond_0

    .line 76
    new-instance v6, Lcom/android/systemui/tuner/TunablePadding;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/TunablePadding;-><init>(Ljava/lang/String;IILandroid/view/View;Lcom/android/systemui/tuner/TunablePadding$1;)V

    return-object v6

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
