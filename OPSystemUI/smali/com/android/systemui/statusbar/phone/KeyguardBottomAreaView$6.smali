.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->collectOpenAssistantEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 869
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$6;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/odm/insight/AssistantEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/AssistantEventCollector;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lnet/oneplus/odm/insight/AssistantEventCollector;->collectOpenAssistantEvent(I)V

    .line 872
    return-void
.end method
