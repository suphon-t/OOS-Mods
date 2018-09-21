.class public Lcom/android/systemui/plugins/PluginDependency;
.super Ljava/lang/Object;
.source "PluginDependency.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1

.field static sProvider:Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "p"    # Lcom/android/systemui/plugins/Plugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 25
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/systemui/plugins/PluginDependency;->sProvider:Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/plugins/PluginDependency$DependencyProvider;->get(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
