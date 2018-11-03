.class Lcom/google/android/systemui/smartspace/SmartSpaceController$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartSpaceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/systemui/smartspace/SmartSpaceController;

    .line 126
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$1;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$000(Lcom/google/android/systemui/smartspace/SmartSpaceController;)V

    .line 130
    return-void
.end method
