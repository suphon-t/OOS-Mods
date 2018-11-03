.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;->f$0:Lcom/android/systemui/volume/OutputChooserDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$UeKcIzGrlInzVatqLUgMgAZVPbU;->f$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/OutputChooserDialog;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
