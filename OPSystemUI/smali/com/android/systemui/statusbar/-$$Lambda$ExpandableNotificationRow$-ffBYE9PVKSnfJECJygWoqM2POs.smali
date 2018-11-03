.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;->f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;->f$0:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$ExpandableNotificationRow$-ffBYE9PVKSnfJECJygWoqM2POs;->f$1:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->lambda$setAppOpsOnClickListener$0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnAppOpsClickListener;Landroid/view/View;)V

    return-void
.end method
