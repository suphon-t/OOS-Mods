.class Lcom/android/systemui/classifier/FalsingManager$1;
.super Landroid/database/ContentObserver;
.source "FalsingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/classifier/FalsingManager;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager$1;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 88
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager$1;->this$0:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManager;->access$000(Lcom/android/systemui/classifier/FalsingManager;)V

    .line 89
    return-void
.end method
