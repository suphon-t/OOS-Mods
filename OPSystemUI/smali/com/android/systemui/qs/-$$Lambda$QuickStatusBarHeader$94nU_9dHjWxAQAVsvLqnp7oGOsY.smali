.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;->f$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QuickStatusBarHeader$94nU_9dHjWxAQAVsvLqnp7oGOsY;->f$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->lambda$updateEverything$1(Lcom/android/systemui/qs/QuickStatusBarHeader;)V

    return-void
.end method
