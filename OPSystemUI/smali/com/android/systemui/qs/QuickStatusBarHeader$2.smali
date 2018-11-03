.class Lcom/android/systemui/qs/QuickStatusBarHeader$2;
.super Ljava/lang/Object;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 188
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$2;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 191
    const-string v0, "QuickStatusBarHeader"

    const-string v1, "mStatusContainerNextAlarmPart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {}, Lcom/android/systemui/qs/QuickStatusBarHeader;->access$200()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0, v3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 195
    return-void
.end method
