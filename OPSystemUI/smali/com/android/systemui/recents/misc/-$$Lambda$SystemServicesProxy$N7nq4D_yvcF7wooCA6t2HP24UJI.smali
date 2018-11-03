.class public final synthetic Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;->f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;->f$2:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;->f$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/recents/misc/-$$Lambda$SystemServicesProxy$N7nq4D_yvcF7wooCA6t2HP24UJI;->f$2:Landroid/app/ActivityOptions;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lambda$startActivityAsUserAsync$1(Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method
