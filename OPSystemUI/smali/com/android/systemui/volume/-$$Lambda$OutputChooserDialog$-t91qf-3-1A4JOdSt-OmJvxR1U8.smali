.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;->f$0:Lcom/android/systemui/volume/OutputChooserDialog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$OutputChooserDialog$-t91qf-3-1A4JOdSt-OmJvxR1U8;->f$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->lambda$onCreate$0(Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method
