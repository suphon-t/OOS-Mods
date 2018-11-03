.class public final synthetic Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/HardwareUiLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/HardwareUiLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;->f$0:Lcom/android/systemui/HardwareUiLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$HardwareUiLayout$cC2d-RGmOoAkRlNqsTu1n43qy3A;->f$0:Lcom/android/systemui/HardwareUiLayout;

    invoke-static {v0}, Lcom/android/systemui/HardwareUiLayout;->lambda$onLayout$2(Lcom/android/systemui/HardwareUiLayout;)V

    return-void
.end method
