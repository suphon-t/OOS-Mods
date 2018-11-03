.class Lcom/android/systemui/statusbar/KeyboardShortcuts$3;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->showKeyboardShortcuts(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 379
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$100(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$200(Lcom/android/systemui/statusbar/KeyboardShortcuts;)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    .line 381
    .local v0, "appShortcuts":Landroid/view/KeyboardShortcutGroup;
    if-eqz v0, :cond_0

    .line 382
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$300(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    .line 385
    return-void
.end method
