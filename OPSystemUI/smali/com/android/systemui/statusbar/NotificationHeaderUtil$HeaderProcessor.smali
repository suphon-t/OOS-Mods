.class Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
.super Ljava/lang/Object;
.source "NotificationHeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationHeaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderProcessor"
.end annotation


# instance fields
.field private final mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

.field private mApply:Z

.field private mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

.field private final mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

.field private final mId:I

.field private mParentData:Ljava/lang/Object;

.field private final mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mParentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V
    .locals 0
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "id"    # I
    .param p3, "extractor"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;
    .param p4, "comparator"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;
    .param p5, "applicator"    # Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    .line 256
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    .line 257
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    .line 258
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    .line 259
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 260
    return-void
.end method

.method private applyToView(ZLandroid/view/View;)V
    .locals 2
    .param p1, "apply"    # Z
    .param p2, "parent"    # Landroid/view/View;

    .line 298
    if-eqz p2, :cond_0

    .line 299
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApplicator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;

    invoke-interface {v1, v0, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;->apply(Landroid/view/View;Z)V

    .line 304
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static forTextView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;
    .locals 7
    .param p0, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "id"    # I

    .line 249
    new-instance v6, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->access$300()Lcom/android/systemui/statusbar/NotificationHeaderUtil$TextViewComparator;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->access$400()Lcom/android/systemui/statusbar/NotificationHeaderUtil$VisibilityApplicator;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;Lcom/android/systemui/statusbar/NotificationHeaderUtil$ResultApplicator;)V

    return-object v6
.end method


# virtual methods
.method public apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V

    .line 284
    return-void
.end method

.method public apply(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "reset"    # Z

    .line 287
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 288
    .local v0, "apply":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 290
    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->applyToView(ZLandroid/view/View;)V

    .line 295
    return-void
.end method

.method public compareToHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 6
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    if-nez v0, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContractedNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    .line 272
    .local v0, "header":Landroid/view/NotificationHeaderView;
    if-nez v0, :cond_1

    .line 275
    return-void

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v1

    .line 278
    .local v1, "childData":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    iget v4, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v0, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->compare(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    .line 280
    return-void
.end method

.method public init()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mExtractor:Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$DataExtractor;->extractData(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentData:Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mComparator:Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil$ViewComparator;->isEmpty(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationHeaderUtil$HeaderProcessor;->mApply:Z

    .line 266
    return-void
.end method
