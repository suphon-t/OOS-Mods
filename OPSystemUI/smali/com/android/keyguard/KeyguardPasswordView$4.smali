.class Lcom/android/keyguard/KeyguardPasswordView$4;
.super Ljava/lang/Object;
.source "KeyguardPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPasswordView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardPasswordView;

    .line 405
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPasswordView$4;->this$0:Lcom/android/keyguard/KeyguardPasswordView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPasswordView;->access$500(Lcom/android/keyguard/KeyguardPasswordView;)V

    .line 409
    return-void
.end method
