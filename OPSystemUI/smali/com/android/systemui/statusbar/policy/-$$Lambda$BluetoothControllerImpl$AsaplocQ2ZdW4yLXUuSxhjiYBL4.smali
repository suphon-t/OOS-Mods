.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$AsaplocQ2ZdW4yLXUuSxhjiYBL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$AsaplocQ2ZdW4yLXUuSxhjiYBL4;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$BluetoothControllerImpl$AsaplocQ2ZdW4yLXUuSxhjiYBL4;->f$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->lambda$updateConnected$0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    return-void
.end method
