.class public final synthetic Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;->f$0:Lcom/android/systemui/power/PowerUI;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$Xy1vzUdmCVpH_1hTsQ2L8yUibUw;->f$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->updateTemperatureWarning()V

    return-void
.end method
