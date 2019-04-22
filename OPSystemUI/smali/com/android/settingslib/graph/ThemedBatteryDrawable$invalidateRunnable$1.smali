.class final Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemedBatteryDrawable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/graph/ThemedBatteryDrawable;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/graph/ThemedBatteryDrawable;


# direct methods
.method constructor <init>(Lcom/android/settingslib/graph/ThemedBatteryDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;->this$0:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$invalidateRunnable$1;->this$0:Lcom/android/settingslib/graph/ThemedBatteryDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
