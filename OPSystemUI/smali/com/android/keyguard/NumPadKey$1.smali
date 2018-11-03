.class Lcom/android/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "NumPadKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/NumPadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/NumPadKey;

    .line 48
    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "thisView"    # Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$100(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$200(Lcom/android/keyguard/NumPadKey;)I

    move-result v0

    if-lez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v1}, Lcom/android/keyguard/NumPadKey;->access$200(Lcom/android/keyguard/NumPadKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/PasswordTextView;

    invoke-static {v1, v2}, Lcom/android/keyguard/NumPadKey;->access$102(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;

    goto :goto_0

    .line 58
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/keyguard/PasswordTextViewForPin;

    if-eqz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1, v2}, Lcom/android/keyguard/NumPadKey;->access$002(Lcom/android/keyguard/NumPadKey;Lcom/android/keyguard/PasswordTextViewForPin;)Lcom/android/keyguard/PasswordTextViewForPin;

    .line 63
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$100(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    const/16 v1, 0xa

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$100(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$100(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v2}, Lcom/android/keyguard/NumPadKey;->access$300(Lcom/android/keyguard/NumPadKey;)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v0}, Lcom/android/keyguard/NumPadKey;->access$000(Lcom/android/keyguard/NumPadKey;)Lcom/android/keyguard/PasswordTextViewForPin;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-static {v2}, Lcom/android/keyguard/NumPadKey;->access$300(Lcom/android/keyguard/NumPadKey;)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->append(C)V

    .line 70
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->userActivity()V

    .line 71
    return-void
.end method
