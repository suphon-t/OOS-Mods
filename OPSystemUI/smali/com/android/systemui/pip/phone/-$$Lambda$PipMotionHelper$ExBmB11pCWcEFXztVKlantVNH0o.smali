.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMotionHelper$ExBmB11pCWcEFXztVKlantVNH0o;->f$0:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-static {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->lambda$dismissPip$1(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    return-void
.end method
