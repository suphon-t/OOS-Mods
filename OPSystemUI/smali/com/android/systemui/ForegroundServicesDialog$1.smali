.class Lcom/android/systemui/ForegroundServicesDialog$1;
.super Ljava/lang/Object;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ForegroundServicesDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/ForegroundServicesDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/ForegroundServicesDialog;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 69
    iget-object v0, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v0}, Lcom/android/systemui/ForegroundServicesDialog;->access$000(Lcom/android/systemui/ForegroundServicesDialog;)Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 70
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-virtual {v2, v1}, Lcom/android/systemui/ForegroundServicesDialog;->startActivity(Landroid/content/Intent;)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-virtual {v2}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    .line 74
    return-void
.end method
