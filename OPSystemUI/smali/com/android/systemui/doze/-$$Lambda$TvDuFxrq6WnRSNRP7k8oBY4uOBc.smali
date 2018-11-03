.class public final synthetic Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/doze/DozeHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/doze/DozeHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;->f$0:Lcom/android/systemui/doze/DozeHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;->f$0:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    return-void
.end method
