.class Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;
.super Ljava/lang/Object;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fingerprint/QLRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationViewData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

.field view:Landroid/view/View;

.field x_after:F

.field x_before:F


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 572
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->this$0:Lcom/android/systemui/fingerprint/QLRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
