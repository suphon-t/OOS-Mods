.class Landroid/support/design/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .locals 0

    .line 414
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p2, "x1"    # Landroid/support/design/chip/ChipGroup$1;

    .line 414
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 418
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v0}, Landroid/support/design/chip/ChipGroup;->access$600(Landroid/support/design/chip/ChipGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 424
    .local v0, "id":I
    const/4 v1, -0x1

    if-eqz p2, :cond_2

    .line 425
    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1}, Landroid/support/design/chip/ChipGroup;->access$800(Landroid/support/design/chip/ChipGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/chip/ChipGroup;->access$900(Landroid/support/design/chip/ChipGroup;IZ)V

    .line 428
    :cond_1
    iget-object v1, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v1, v0}, Landroid/support/design/chip/ChipGroup;->access$1000(Landroid/support/design/chip/ChipGroup;I)V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$700(Landroid/support/design/chip/ChipGroup;)I

    move-result v2

    if-ne v2, v0, :cond_3

    .line 431
    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$CheckedStateTracker;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2, v1}, Landroid/support/design/chip/ChipGroup;->access$1000(Landroid/support/design/chip/ChipGroup;I)V

    .line 434
    :cond_3
    :goto_0
    return-void
.end method
