.class Lcom/android/systemui/statusbar/KeyboardShortcuts$1;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;
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

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$1;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->access$000(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V

    .line 101
    return-void
.end method
