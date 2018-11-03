.class Lcom/android/systemui/globalactions/GlobalActionsDialog$11;
.super Landroid/database/ContentObserver;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 1326
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 1329
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$11;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2200(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    .line 1330
    return-void
.end method
