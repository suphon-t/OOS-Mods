.class Lcom/android/systemui/statusbar/KeyboardShortcuts$2;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/KeyboardShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/KeyboardShortcutInfo;Landroid/view/KeyboardShortcutInfo;)I
    .locals 4
    .param p1, "ksh1"    # Landroid/view/KeyboardShortcutInfo;
    .param p2, "ksh2"    # Landroid/view/KeyboardShortcutInfo;

    .line 107
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 109
    .local v0, "ksh1ShouldBeLast":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 110
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v1

    .line 111
    .local v3, "ksh2ShouldBeLast":Z
    :goto_3
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 112
    return v2

    .line 114
    :cond_4
    if-eqz v0, :cond_5

    .line 115
    return v1

    .line 117
    :cond_5
    if-eqz v3, :cond_6

    .line 118
    const/4 v1, -0x1

    return v1

    .line 120
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {p2}, Landroid/view/KeyboardShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 104
    check-cast p1, Landroid/view/KeyboardShortcutInfo;

    check-cast p2, Landroid/view/KeyboardShortcutInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyboardShortcuts$2;->compare(Landroid/view/KeyboardShortcutInfo;Landroid/view/KeyboardShortcutInfo;)I

    move-result p1

    return p1
.end method
