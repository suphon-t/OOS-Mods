.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

.field private final synthetic f$1:Lcom/android/systemui/volume/OutputChooserLayout$Item;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/OutputChooserLayout$Adapter;Lcom/android/systemui/volume/OutputChooserLayout$Item;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;->f$0:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;->f$1:Lcom/android/systemui/volume/OutputChooserLayout$Item;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;->f$0:Lcom/android/systemui/volume/OutputChooserLayout$Adapter;

    iget-object v1, p0, Lcom/android/systemui/volume/-$$Lambda$OutputChooserLayout$Adapter$onR-wEbV_JxJUsxBtuaAOi9XHTU;->f$1:Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/volume/OutputChooserLayout$Adapter;->lambda$getView$0(Lcom/android/systemui/volume/OutputChooserLayout$Adapter;Lcom/android/systemui/volume/OutputChooserLayout$Item;Landroid/view/View;)V

    return-void
.end method
