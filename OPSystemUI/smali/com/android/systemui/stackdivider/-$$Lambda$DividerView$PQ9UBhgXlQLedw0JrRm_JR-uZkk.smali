.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$PQ9UBhgXlQLedw0JrRm_JR-uZkk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/DividerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/DividerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$PQ9UBhgXlQLedw0JrRm_JR-uZkk;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$DividerView$PQ9UBhgXlQLedw0JrRm_JR-uZkk;->f$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->lambda$getFlingAnimator$2(Lcom/android/systemui/stackdivider/DividerView;)V

    return-void
.end method
