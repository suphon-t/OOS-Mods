.class public Lcom/android/systemui/BatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "BatteryDashChargeView.java"


# instance fields
.field private mDark:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    .line 40
    return-void
.end method

.method private getImageResId()I
    .locals 4

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "resId":I
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_1

    .line 65
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_0

    .line 66
    const v1, 0x7f08038b

    goto :goto_0

    .line 67
    :cond_0
    const v1, 0x7f08038c

    :goto_0
    move v0, v1

    goto/16 :goto_11

    .line 68
    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0xb

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_3

    .line 69
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_2

    .line 70
    const v1, 0x7f08038d

    goto :goto_1

    .line 71
    :cond_2
    const v1, 0x7f08039c

    :goto_1
    move v0, v1

    goto/16 :goto_11

    .line 72
    :cond_3
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x11

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_5

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_4

    .line 74
    const v1, 0x7f08039d

    goto :goto_2

    .line 75
    :cond_4
    const v1, 0x7f08039e

    :goto_2
    move v0, v1

    goto/16 :goto_11

    .line 76
    :cond_5
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x17

    if-le v1, v3, :cond_7

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_7

    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_6

    .line 78
    const v1, 0x7f08039f

    goto :goto_3

    .line 79
    :cond_6
    const v1, 0x7f0803a0

    :goto_3
    move v0, v1

    goto/16 :goto_11

    .line 80
    :cond_7
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x1d

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_9

    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_8

    .line 82
    const v1, 0x7f0803a1

    goto :goto_4

    .line 83
    :cond_8
    const v1, 0x7f0803a2

    :goto_4
    move v0, v1

    goto/16 :goto_11

    .line 84
    :cond_9
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v3, :cond_b

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_b

    .line 85
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_a

    .line 86
    const v1, 0x7f0803a3

    goto :goto_5

    .line 87
    :cond_a
    const v1, 0x7f0803a4

    :goto_5
    move v0, v1

    goto/16 :goto_11

    .line 88
    :cond_b
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x29

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_d

    .line 89
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_c

    .line 90
    const v1, 0x7f0803a5

    goto :goto_6

    .line 91
    :cond_c
    const v1, 0x7f0803a6

    :goto_6
    move v0, v1

    goto/16 :goto_11

    .line 92
    :cond_d
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v3, :cond_f

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_f

    .line 93
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_e

    .line 94
    const v1, 0x7f0803a7

    goto :goto_7

    .line 95
    :cond_e
    const v1, 0x7f0803a8

    :goto_7
    move v0, v1

    goto/16 :goto_11

    .line 96
    :cond_f
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x35

    if-le v1, v2, :cond_11

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_11

    .line 97
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_10

    .line 98
    const v1, 0x7f0803a9

    goto :goto_8

    .line 99
    :cond_10
    const v1, 0x7f0803aa

    :goto_8
    move v0, v1

    goto/16 :goto_11

    .line 100
    :cond_11
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v3, :cond_13

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_13

    .line 101
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_12

    .line 102
    const v1, 0x7f0803ab

    goto :goto_9

    .line 103
    :cond_12
    const v1, 0x7f0803ac

    :goto_9
    move v0, v1

    goto/16 :goto_11

    .line 104
    :cond_13
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x41

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_15

    .line 105
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_14

    .line 106
    const v1, 0x7f08038e

    goto :goto_a

    .line 107
    :cond_14
    const v1, 0x7f08038f

    :goto_a
    move v0, v1

    goto/16 :goto_11

    .line 108
    :cond_15
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v3, :cond_17

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_17

    .line 109
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_16

    .line 110
    const v1, 0x7f080390

    goto :goto_b

    .line 111
    :cond_16
    const v1, 0x7f080391

    :goto_b
    move v0, v1

    goto/16 :goto_11

    .line 112
    :cond_17
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x4d

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_19

    .line 113
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_18

    .line 114
    const v1, 0x7f080392

    goto :goto_c

    .line 115
    :cond_18
    const v1, 0x7f080393

    :goto_c
    move v0, v1

    goto/16 :goto_11

    .line 116
    :cond_19
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v3, :cond_1b

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1b

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1a

    .line 118
    const v1, 0x7f080394

    goto :goto_d

    .line 119
    :cond_1a
    const v1, 0x7f080395

    :goto_d
    move v0, v1

    goto :goto_11

    .line 120
    :cond_1b
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x59

    if-le v1, v2, :cond_1d

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_1d

    .line 121
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1c

    .line 122
    const v1, 0x7f080396

    goto :goto_e

    .line 123
    :cond_1c
    const v1, 0x7f080397

    :goto_e
    move v0, v1

    goto :goto_11

    .line 124
    :cond_1d
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v3, :cond_1f

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1f

    .line 125
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1e

    .line 126
    const v1, 0x7f080398

    goto :goto_f

    .line 127
    :cond_1e
    const v1, 0x7f080399

    :goto_f
    move v0, v1

    goto :goto_11

    .line 128
    :cond_1f
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_21

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_21

    .line 129
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_20

    .line 130
    const v1, 0x7f08039a

    goto :goto_10

    .line 131
    :cond_20
    const v1, 0x7f08039b

    :goto_10
    move v0, v1

    .line 133
    :cond_21
    :goto_11
    return v0
.end method


# virtual methods
.method public setIconTint(I)V
    .locals 1
    .param p1, "color"    # I

    .line 44
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryDashChargeView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    return-void
.end method

.method public setLevel(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "force"    # Z

    .line 55
    iget v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 56
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/BatteryDashChargeView;->getImageResId()I

    move-result v0

    .line 58
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryDashChargeView;->setImageResource(I)V

    .line 60
    .end local v0    # "resId":I
    :cond_1
    return-void
.end method

.method public updateDisplayAndTextSize()V
    .locals 2

    .line 50
    iget v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setLevel(IZ)V

    .line 51
    return-void
.end method
