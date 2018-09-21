.class Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
.super Lcom/android/systemui/statusbar/stack/ExpandableViewState;
.source "NotificationShelf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationShelf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShelfState"
.end annotation


# instance fields
.field private hasItemsInStableShelf:Z

.field private maxShelfEnd:F

.field private openedAmount:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/NotificationShelf$1;

    .line 879
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    .param p1, "x1"    # F

    .line 879
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    .line 879
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    .param p1, "x1"    # Z

    .line 879
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    .param p1, "x1"    # F

    .line 879
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    return p1
.end method


# virtual methods
.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "properties"    # Lcom/android/systemui/statusbar/stack/AnimationProperties;

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$500(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    return-void

    .line 904
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$600(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    .line 907
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$700(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$800(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 910
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$500(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 887
    return-void

    .line 890
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->maxShelfEnd:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setMaxShelfEnd(F)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->openedAmount:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$600(Lcom/android/systemui/statusbar/NotificationShelf;F)V

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateAppearance()V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hasItemsInStableShelf:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$700(Lcom/android/systemui/statusbar/NotificationShelf;Z)V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationShelf;->access$900(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->this$0:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationShelf;->access$800(Lcom/android/systemui/statusbar/NotificationShelf;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    .line 896
    return-void
.end method
