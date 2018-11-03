.class public Lcom/android/settingslib/widget/LinkTextView;
.super Landroid/widget/TextView;
.source "LinkTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/LinkTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 43
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 46
    .local v0, "spans":[Landroid/text/style/ClickableSpan;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 47
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/LinkTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 50
    .end local v0    # "spans":[Landroid/text/style/ClickableSpan;
    :cond_0
    return-void
.end method
