.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$YD1kfcxpItFZ4AniRUv_gcXk_Mo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$YD1kfcxpItFZ4AniRUv_gcXk_Mo;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$YD1kfcxpItFZ4AniRUv_gcXk_Mo;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-static {v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->lambda$start$0(Lcom/android/systemui/globalactions/GlobalActionsComponent;)Lcom/android/systemui/plugins/GlobalActions;

    move-result-object v0

    return-object v0
.end method
