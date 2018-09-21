.class Lcom/android/systemui/qs/customize/QSCustomizer$2;
.super Lcom/android/systemui/qs/SystemSetting;
.source "QSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/QSCustomizer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "settingName"    # Ljava/lang/String;

    .line 179
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 2
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .line 182
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$002(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$000(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->access$100(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    .line 184
    return-void
.end method
