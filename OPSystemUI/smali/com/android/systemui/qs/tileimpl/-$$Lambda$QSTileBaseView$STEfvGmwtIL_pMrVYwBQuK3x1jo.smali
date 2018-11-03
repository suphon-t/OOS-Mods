.class public final synthetic Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/plugins/qs/QSTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/-$$Lambda$QSTileBaseView$STEfvGmwtIL_pMrVYwBQuK3x1jo;->f$0:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->lambda$init$2(Lcom/android/systemui/plugins/qs/QSTile;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
