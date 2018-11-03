.class public final synthetic Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$x7_zsW6bYkksPPNk4f5aNW7Etqo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/util/Log$TerribleFailureHandler;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/plugins/PluginManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/PluginManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$x7_zsW6bYkksPPNk4f5aNW7Etqo;->f$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    return-void
.end method


# virtual methods
.method public final onTerribleFailure(Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugins/-$$Lambda$PluginManagerImpl$x7_zsW6bYkksPPNk4f5aNW7Etqo;->f$0:Lcom/android/systemui/plugins/PluginManagerImpl;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/plugins/PluginManagerImpl;->lambda$handleWtfs$1(Lcom/android/systemui/plugins/PluginManagerImpl;Ljava/lang/String;Landroid/util/Log$TerribleFailure;Z)V

    return-void
.end method
