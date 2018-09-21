.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iput p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    iget v1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->lambda$updateList$1(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;ILandroid/view/View;)V

    return-void
.end method
