.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$bGplH0pcKhfpL1pOMBpgWKJntvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$bGplH0pcKhfpL1pOMBpgWKJntvw;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsComponent$bGplH0pcKhfpL1pOMBpgWKJntvw;->f$0:Lcom/android/systemui/globalactions/GlobalActionsComponent;

    check-cast p1, Lcom/android/systemui/plugins/GlobalActions;

    invoke-static {v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->lambda$bGplH0pcKhfpL1pOMBpgWKJntvw(Lcom/android/systemui/globalactions/GlobalActionsComponent;Lcom/android/systemui/plugins/GlobalActions;)V

    return-void
.end method
