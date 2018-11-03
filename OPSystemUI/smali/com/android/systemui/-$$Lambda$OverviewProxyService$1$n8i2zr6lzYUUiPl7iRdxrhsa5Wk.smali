.class public final synthetic Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/OverviewProxyService$1;

.field private final synthetic f$1:F

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/OverviewProxyService$1;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;->f$0:Lcom/android/systemui/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;->f$1:F

    iput-boolean p3, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;->f$0:Lcom/android/systemui/OverviewProxyService$1;

    iget v1, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;->f$1:F

    iget-boolean v2, p0, Lcom/android/systemui/-$$Lambda$OverviewProxyService$1$n8i2zr6lzYUUiPl7iRdxrhsa5Wk;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/OverviewProxyService$1;->lambda$setBackButtonAlpha$3(Lcom/android/systemui/OverviewProxyService$1;FZ)V

    return-void
.end method
