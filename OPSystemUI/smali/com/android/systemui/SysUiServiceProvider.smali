.class public interface abstract Lcom/android/systemui/SysUiServiceProvider;
.super Ljava/lang/Object;
.source "SysUiServiceProvider.java"


# direct methods
.method public static getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 27
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SysUiServiceProvider;

    invoke-interface {v0, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
