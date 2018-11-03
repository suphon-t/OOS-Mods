.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$KCr2UERgVxA0G1QTICG9cHJxmlk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$KCr2UERgVxA0G1QTICG9cHJxmlk;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$KCr2UERgVxA0G1QTICG9cHJxmlk;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$createDialog$0(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
