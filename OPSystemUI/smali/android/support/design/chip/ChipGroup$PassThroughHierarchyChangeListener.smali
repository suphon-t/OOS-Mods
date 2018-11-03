.class Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/support/design/chip/ChipGroup;


# direct methods
.method private constructor <init>(Landroid/support/design/chip/ChipGroup;)V
    .locals 0

    .line 442
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/chip/ChipGroup;Landroid/support/design/chip/ChipGroup$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/design/chip/ChipGroup;
    .param p2, "x1"    # Landroid/support/design/chip/ChipGroup$1;

    .line 442
    invoke-direct {p0, p1}, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/support/design/chip/ChipGroup;)V

    return-void
.end method

.method static synthetic access$302(Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0
    .param p0, "x0"    # Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;
    .param p1, "x1"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 442
    iput-object p1, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 447
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 450
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 451
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 452
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 456
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 458
    :cond_1
    move-object v1, p2

    check-cast v1, Landroid/support/design/chip/Chip;

    iget-object v2, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    invoke-static {v2}, Landroid/support/design/chip/ChipGroup;->access$1100(Landroid/support/design/chip/ChipGroup;)Landroid/support/design/chip/ChipGroup$CheckedStateTracker;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 461
    .end local v0    # "id":I
    :cond_2
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_3

    .line 462
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 464
    :cond_3
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .line 468
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/support/design/chip/ChipGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/support/design/chip/Chip;

    if-eqz v0, :cond_0

    .line 469
    move-object v0, p2

    check-cast v0, Landroid/support/design/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 472
    :cond_0
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Landroid/support/design/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 475
    :cond_1
    return-void
.end method
