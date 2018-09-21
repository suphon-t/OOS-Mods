.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;->f$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;->f$0:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$HybridGroupManager$F4-Ues96OqS7pldtinZIwLPoyPg;->f$1:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->lambda$setOverflowNumberDark$0(Lcom/android/systemui/statusbar/notification/HybridGroupManager;Landroid/widget/TextView;Ljava/lang/Float;)V

    return-void
.end method
