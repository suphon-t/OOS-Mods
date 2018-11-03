.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$NTRmeN-9LsZ7CNQt3AAPKduQbCg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/service/notification/ZenModeConfig;


# direct methods
.method public synthetic constructor <init>(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$NTRmeN-9LsZ7CNQt3AAPKduQbCg;->f$0:Landroid/service/notification/ZenModeConfig;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$ZenModeControllerImpl$NTRmeN-9LsZ7CNQt3AAPKduQbCg;->f$0:Landroid/service/notification/ZenModeConfig;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$fireConfigChanged$5(Landroid/service/notification/ZenModeConfig;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method
