.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$updateList$2(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/view/View;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
