.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field private final synthetic f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;->f$0:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipManager$PinnedStackListener$JU_-Gjrp-L4fTB-9HLmwOZwFKXw;->f$1:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$onActionsChanged$5(Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method
