.class Lcom/android/keyguard/PasswordTextViewForPin$1;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PasswordTextViewForPin;->append(C)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .line 305
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$1;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->access$000(Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/PasswordTextViewForPin$UserActivityListener;->onCheckPasswordAndUnlock()V

    .line 309
    return-void
.end method
