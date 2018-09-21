.class public Landroid/support/v17/leanback/widget/picker/PickerColumn;
.super Ljava/lang/Object;
.source "PickerColumn.java"


# instance fields
.field private mCurrentValue:I

.field private mLabelFormat:Ljava/lang/String;

.field private mMaxValue:I

.field private mMinValue:I

.field private mStaticLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 105
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mMaxValue:I

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentValue()I
    .locals 1

    .line 90
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    return v0
.end method

.method public getLabelFor(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "value"    # I

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mLabelFormat:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 113
    iget v0, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mMinValue:I

    return v0
.end method

.method public setCurrentValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 97
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mCurrentValue:I

    .line 98
    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "labelFormat"    # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mLabelFormat:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMaxValue(I)V
    .locals 0
    .param p1, "maxValue"    # I

    .line 137
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 138
    return-void
.end method

.method public setMinValue(I)V
    .locals 0
    .param p1, "minValue"    # I

    .line 129
    iput p1, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 130
    return-void
.end method

.method public setStaticLabels([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "labels"    # [Ljava/lang/CharSequence;

    .line 60
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 61
    return-void
.end method
