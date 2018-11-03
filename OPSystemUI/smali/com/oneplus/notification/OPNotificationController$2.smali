.class Lcom/oneplus/notification/OPNotificationController$2;
.super Ljava/lang/Object;
.source "OPNotificationController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OPNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OPNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OPNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/notification/OPNotificationController;

    .line 686
    iput-object p1, p0, Lcom/oneplus/notification/OPNotificationController$2;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "exists"    # Ljava/lang/Boolean;

    .line 689
    iget-object v0, p0, Lcom/oneplus/notification/OPNotificationController$2;->this$0:Lcom/oneplus/notification/OPNotificationController;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/notification/OPNotificationController;->access$1602(Lcom/oneplus/notification/OPNotificationController;Z)Z

    .line 690
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 686
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OPNotificationController$2;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
