.class public final synthetic Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$qne41-2ZLAnF5q0szRXUTgxl7BA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$qne41-2ZLAnF5q0szRXUTgxl7BA;->f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$qne41-2ZLAnF5q0szRXUTgxl7BA;->f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$awakenDreamsAsync$4(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V

    return-void
.end method
