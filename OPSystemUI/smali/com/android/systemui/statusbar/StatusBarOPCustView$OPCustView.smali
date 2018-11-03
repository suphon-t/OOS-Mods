.class Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;
.super Ljava/lang/Object;
.source "StatusBarOPCustView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarOPCustView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPCustView"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mValidArray:[Ljava/lang/Class;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarOPCustView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/StatusBarOPCustView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .line 235
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->this$0:Lcom/android/systemui/statusbar/StatusBarOPCustView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Class;

    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-class v0, Lcom/android/systemui/statusbar/NetworkSpeedView;

    const/4 v1, 0x1

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    .line 236
    iput-object p2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mContext:Landroid/content/Context;

    .line 237
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setTextColor(I)V

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public setView(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 240
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mValidArray:[Ljava/lang/Class;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 244
    .local v4, "c":Ljava/lang/Class;
    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 243
    .end local v4    # "c":Ljava/lang/Class;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_1
    if-nez v0, :cond_2

    .line 250
    const-string v1, "StatusBarOPCustView"

    const-string v2, "Load StatusBarOPCustView error, the resource is not valid."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    .line 254
    :cond_2
    return v0
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 259
    return-void
.end method
