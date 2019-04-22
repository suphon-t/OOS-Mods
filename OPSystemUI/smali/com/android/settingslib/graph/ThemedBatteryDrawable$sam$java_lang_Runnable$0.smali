.class final Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;
.super Ljava/lang/Object;
.source "ThemedBatteryDrawable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;->function:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "invoke(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
