.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayout$Alignment;,
        Landroid/support/v7/widget/GridLayout$Spec;,
        Landroid/support/v7/widget/GridLayout$Interval;,
        Landroid/support/v7/widget/GridLayout$Bounds;,
        Landroid/support/v7/widget/GridLayout$PackedMap;,
        Landroid/support/v7/widget/GridLayout$Assoc;,
        Landroid/support/v7/widget/GridLayout$MutableInt;,
        Landroid/support/v7/widget/GridLayout$Arc;,
        Landroid/support/v7/widget/GridLayout$LayoutParams;,
        Landroid/support/v7/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I

.field public static final BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final COLUMN_COUNT:I

.field private static final COLUMN_ORDER_PRESERVED:I

.field public static final END:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I

.field public static final RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final ROW_COUNT:I

.field private static final ROW_ORDER_PRESERVED:I

.field public static final START:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final USE_DEFAULT_MARGINS:I


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 230
    new-instance v0, Landroid/util/LogPrinter;

    const-class v1, Landroid/support/v7/widget/GridLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 231
    new-instance v0, Landroid/support/v7/widget/GridLayout$1;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 247
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_orientation:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ORIENTATION:I

    .line 248
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ROW_COUNT:I

    .line 249
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnCount:I

    sput v0, Landroid/support/v7/widget/GridLayout;->COLUMN_COUNT:I

    .line 250
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_useDefaultMargins:I

    sput v0, Landroid/support/v7/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    .line 251
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_alignmentMode:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ALIGNMENT_MODE:I

    .line 252
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_rowOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    .line 253
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_columnOrderPreserved:I

    sput v0, Landroid/support/v7/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    .line 2694
    new-instance v0, Landroid/support/v7/widget/GridLayout$2;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2715
    new-instance v0, Landroid/support/v7/widget/GridLayout$3;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2736
    new-instance v0, Landroid/support/v7/widget/GridLayout$4;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$4;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2757
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2763
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2769
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2775
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2804
    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2810
    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2817
    new-instance v0, Landroid/support/v7/widget/GridLayout$6;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$6;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2841
    new-instance v0, Landroid/support/v7/widget/GridLayout$7;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$7;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2902
    new-instance v0, Landroid/support/v7/widget/GridLayout$8;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$8;-><init>()V

    sput-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 301
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 292
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 293
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 272
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 257
    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 258
    new-instance v0, Landroid/support/v7/widget/GridLayout$Axis;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 259
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    .line 260
    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    .line 261
    iput v1, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    .line 263
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 264
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Landroid/support/v7/gridlayout/R$dimen;->default_gap:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    .line 274
    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v3, Landroid/support/v7/widget/GridLayout;->ROW_COUNT:I

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    .line 277
    sget v3, Landroid/support/v7/widget/GridLayout;->COLUMN_COUNT:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 278
    sget v3, Landroid/support/v7/widget/GridLayout;->ORIENTATION:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    .line 279
    sget v3, Landroid/support/v7/widget/GridLayout;->USE_DEFAULT_MARGINS:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 280
    sget v2, Landroid/support/v7/widget/GridLayout;->ALIGNMENT_MODE:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    .line 281
    sget v2, Landroid/support/v7/widget/GridLayout;->ROW_ORDER_PRESERVED:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 282
    sget v2, Landroid/support/v7/widget/GridLayout;->COLUMN_ORDER_PRESERVED:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 285
    nop

    .line 286
    return-void

    .line 284
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static adjust(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .line 942
    add-int v0, p0, p1

    .line 943
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 942
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 616
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 617
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .param p0, "flexibility"    # I

    .line 2925
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V
    .locals 7
    .param p1, "lp"    # Landroid/support/v7/widget/GridLayout$LayoutParams;
    .param p2, "horizontal"    # Z

    .line 815
    if-eqz p2, :cond_0

    const-string v0, "column"

    goto :goto_0

    :cond_0
    const-string v0, "row"

    .line 816
    .local v0, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_1

    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 817
    .local v1, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    iget-object v2, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 818
    .local v2, "span":Landroid/support/v7/widget/GridLayout$Interval;
    iget v3, v2, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    iget v3, v2, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-gez v3, :cond_2

    .line 819
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " indices must be positive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 821
    :cond_2
    if-eqz p2, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 822
    .local v3, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_2
    iget v5, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 823
    .local v5, "count":I
    if-eq v5, v4, :cond_5

    .line 824
    iget v4, v2, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-le v4, v5, :cond_4

    .line 825
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 828
    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 829
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " span mustn\'t exceed the "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 832
    :cond_5
    return-void
.end method

.method private static clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I
    .locals 3
    .param p0, "minorRange"    # Landroid/support/v7/widget/GridLayout$Interval;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .line 723
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    .line 724
    .local v0, "size":I
    if-nez p2, :cond_0

    .line 725
    return v0

    .line 727
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 728
    .local v1, "min":I
    :goto_0
    sub-int v2, p2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .line 880
    const/4 v0, 0x1

    .line 881
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 882
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 883
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .end local v3    # "c":Landroid/view/View;
    goto :goto_1

    .line 884
    .restart local v3    # "c":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 885
    .local v4, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    const/16 v5, 0x1f

    mul-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    add-int/2addr v5, v6

    .line 881
    .end local v0    # "result":I
    .end local v3    # "c":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .local v5, "result":I
    move v0, v5

    .end local v5    # "result":I
    .restart local v0    # "result":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_1
    return v0
.end method

.method private consistencyCheck()V
    .locals 2

    .line 891
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_0

    .line 892
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->validateLayoutParams()V

    .line 893
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    goto :goto_0

    .line 894
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 895
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 897
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 898
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 900
    :cond_1
    :goto_0
    return-void
.end method

.method private static createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1
    .param p0, "ltr"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p1, "rtl"    # Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2778
    new-instance v0, Landroid/support/v7/widget/GridLayout$5;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$5;-><init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V

    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 700
    array-length v0, p0

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    .line 701
    return v1

    .line 703
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 704
    aget v2, p0, v0

    if-le v2, p1, :cond_1

    .line 705
    return v1

    .line 703
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 5
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .line 623
    const/4 v0, 0x7

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x70

    .line 624
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 625
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    shr-int/2addr v3, v2

    .line 626
    .local v3, "flags":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    const/4 v4, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v0, :cond_4

    const v0, 0x800003

    if-eq v3, v0, :cond_3

    const v0, 0x800005

    if-eq v3, v0, :cond_2

    .line 640
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    .line 638
    :cond_2
    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    .line 636
    :cond_3
    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    .line 632
    :cond_4
    sget-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0

    .line 630
    :cond_5
    if-eqz p1, :cond_6

    sget-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_2
    return-object v0

    .line 628
    :cond_7
    if-eqz p1, :cond_8

    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_3

    :cond_8
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_3
    return-object v0

    .line 634
    :cond_9
    sget-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    return-object v0
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Landroid/support/v7/widget/GridLayout$LayoutParams;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .line 658
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 659
    return v1

    .line 661
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 662
    .local v0, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_0
    if-eqz p3, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 663
    .local v2, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 664
    .local v3, "span":Landroid/support/v7/widget/GridLayout$Interval;
    const/4 v4, 0x1

    if-eqz p3, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p4, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v1

    goto :goto_2

    :cond_4
    move v5, p4

    .line 665
    .local v5, "leading1":Z
    :goto_2
    if-eqz v5, :cond_6

    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-nez v6, :cond_5

    :goto_3
    move v1, v4

    goto :goto_4

    :cond_5
    goto :goto_4

    :cond_6
    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_5

    goto :goto_3

    .line 667
    .local v1, "isAtEdge":Z
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    return v4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 646
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v4/widget/Space;

    if-eq v0, v1, :cond_1

    .line 647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/widget/Space;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 648
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .line 654
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 683
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 684
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v0

    return v0

    .line 686
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 687
    .local v0, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v1

    .line 688
    .local v1, "margins":[I
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 689
    .local v2, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v3, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v3, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 690
    .local v3, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_2
    if-eqz p3, :cond_4

    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    goto :goto_3

    :cond_4
    iget-object v4, v3, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v4, v4, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 691
    .local v4, "index":I
    :goto_3
    aget v5, v1, v4

    return v5
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 985
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 696
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 811
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    .line 790
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 791
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 794
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 795
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .line 800
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 802
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 804
    :cond_0
    return-void
.end method

.method private isLayoutRtlCompat()Z
    .locals 2

    .line 679
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static max2([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .line 607
    move v0, p1

    .line 608
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p0

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 609
    aget v3, p0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_0
    return v0
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .line 907
    nop

    .line 908
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    .line 907
    invoke-static {p2, v0, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 909
    .local v0, "childWidthSpec":I
    nop

    .line 910
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    .line 909
    invoke-static {p3, v1, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 911
    .local v1, "childHeightSpec":I
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 912
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 18
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    move-object/from16 v6, p0

    .line 916
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    move v7, v0

    .end local v0    # "i":I
    .local v1, "N":I
    .local v7, "i":I
    :goto_0
    move v8, v1

    .end local v1    # "N":I
    .local v8, "N":I
    if-ge v7, v8, :cond_7

    .line 917
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 918
    .local v9, "c":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .end local v9    # "c":Landroid/view/View;
    goto/16 :goto_4

    .line 919
    .restart local v9    # "c":Landroid/view/View;
    :cond_0
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v10

    .line 920
    .local v10, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p3, :cond_1

    .line 921
    iget v4, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    iget v5, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    .line 923
    :cond_1
    iget v0, v6, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move v11, v0

    .line 924
    .local v11, "horizontal":Z
    if-eqz v11, :cond_3

    iget-object v0, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_2

    :cond_3
    iget-object v0, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    :goto_2
    move-object v12, v0

    .line 925
    .local v12, "spec":Landroid/support/v7/widget/GridLayout$Spec;
    invoke-virtual {v12, v11}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_6

    .line 926
    iget-object v13, v12, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 927
    .local v13, "span":Landroid/support/v7/widget/GridLayout$Interval;
    if-eqz v11, :cond_4

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_3

    :cond_4
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    :goto_3
    move-object v14, v0

    .line 928
    .local v14, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v15

    .line 929
    .local v15, "locations":[I
    iget v0, v13, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v0, v15, v0

    iget v1, v13, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v1, v15, v1

    sub-int v16, v0, v1

    .line 930
    .local v16, "cellSize":I
    invoke-direct {v6, v9, v11}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v0

    sub-int v17, v16, v0

    .line 931
    .local v17, "viewSize":I
    if-eqz v11, :cond_5

    .line 932
    iget v5, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_4

    .line 934
    :cond_5
    iget v4, v10, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    move-object v0, v6

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    .line 916
    .end local v9    # "c":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v11    # "horizontal":Z
    .end local v12    # "spec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v13    # "span":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v14    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15    # "locations":[I
    .end local v16    # "cellSize":I
    .end local v17    # "viewSize":I
    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v1, v8

    goto :goto_0

    .line 939
    .end local v7    # "i":I
    .end local v8    # "N":I
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .line 712
    array-length v0, p0

    .line 713
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 714
    return-void
.end method

.method private static setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .param p0, "lp"    # Landroid/support/v7/widget/GridLayout$LayoutParams;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .line 717
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 718
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 719
    return-void
.end method

.method public static spec(I)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I

    .line 2623
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    .line 2607
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2572
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 7
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Landroid/support/v7/widget/GridLayout$Alignment;
    .param p3, "weight"    # F

    .line 2527
    new-instance v6, Landroid/support/v7/widget/GridLayout$Spec;

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v6

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;F)V

    return-object v6
.end method

.method private validateLayoutParams()V
    .locals 19

    .line 733
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 734
    .local v1, "horizontal":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    goto :goto_1

    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 735
    .local v3, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    iget v4, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_2

    iget v2, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    nop

    .line 737
    .local v2, "count":I
    :cond_2
    const/4 v4, 0x0

    .line 738
    .local v4, "major":I
    const/4 v5, 0x0

    .line 739
    .local v5, "minor":I
    new-array v6, v2, [I

    .line 741
    .local v6, "maxSizes":[I
    const/4 v7, 0x0

    .local v7, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v8

    .local v8, "N":I
    :goto_2
    if-ge v7, v8, :cond_e

    .line 742
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 744
    .local v9, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz v1, :cond_3

    iget-object v10, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_3

    :cond_3
    iget-object v10, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 745
    .local v10, "majorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    iget-object v11, v10, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 746
    .local v11, "majorRange":Landroid/support/v7/widget/GridLayout$Interval;
    iget-boolean v12, v10, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 747
    .local v12, "majorWasDefined":Z
    invoke-virtual {v11}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v13

    .line 748
    .local v13, "majorSpan":I
    if-eqz v12, :cond_4

    .line 749
    iget v4, v11, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 752
    :cond_4
    if-eqz v1, :cond_5

    iget-object v14, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    goto :goto_4

    :cond_5
    iget-object v14, v9, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 753
    .local v14, "minorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    :goto_4
    iget-object v15, v14, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 754
    .local v15, "minorRange":Landroid/support/v7/widget/GridLayout$Interval;
    iget-boolean v0, v14, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 755
    .local v0, "minorWasDefined":Z
    move-object/from16 v16, v3

    invoke-static {v15, v0, v2}, Landroid/support/v7/widget/GridLayout;->clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I

    move-result v3

    .line 756
    .local v3, "minorSpan":I
    .local v16, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    if-eqz v0, :cond_6

    .line 757
    iget v5, v15, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 760
    :cond_6
    if-eqz v2, :cond_c

    .line 762
    if-eqz v12, :cond_8

    if-nez v0, :cond_7

    goto :goto_5

    .line 776
    :cond_7
    move/from16 v17, v8

    goto :goto_7

    .line 763
    :cond_8
    :goto_5
    move/from16 v17, v8

    add-int v8, v5, v3

    .end local v8    # "N":I
    .local v17, "N":I
    invoke-static {v6, v4, v5, v8}, Landroid/support/v7/widget/GridLayout;->fits([IIII)Z

    move-result v8

    if-nez v8, :cond_b

    .line 764
    if-eqz v0, :cond_9

    .line 765
    add-int/lit8 v4, v4, 0x1

    .line 763
    .end local v17    # "N":I
    .restart local v8    # "N":I
    :goto_6
    move/from16 v8, v17

    goto :goto_5

    .line 767
    .end local v8    # "N":I
    .restart local v17    # "N":I
    :cond_9
    add-int v8, v5, v3

    if-gt v8, v2, :cond_a

    .line 768
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 770
    :cond_a
    const/4 v5, 0x0

    .line 771
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 776
    :cond_b
    :goto_7
    add-int v8, v5, v3

    move/from16 v18, v0

    add-int v0, v4, v13

    .end local v0    # "minorWasDefined":Z
    .local v18, "minorWasDefined":Z
    invoke-static {v6, v5, v8, v0}, Landroid/support/v7/widget/GridLayout;->procrusteanFill([IIII)V

    goto :goto_8

    .line 779
    .end local v17    # "N":I
    .end local v18    # "minorWasDefined":Z
    .restart local v0    # "minorWasDefined":Z
    .restart local v8    # "N":I
    :cond_c
    move/from16 v18, v0

    move/from16 v17, v8

    .end local v0    # "minorWasDefined":Z
    .end local v8    # "N":I
    .restart local v17    # "N":I
    .restart local v18    # "minorWasDefined":Z
    :goto_8
    if-eqz v1, :cond_d

    .line 780
    invoke-static {v9, v4, v13, v5, v3}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_9

    .line 782
    :cond_d
    invoke-static {v9, v5, v3, v4, v13}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    .line 785
    :goto_9
    add-int/2addr v5, v3

    .line 741
    .end local v3    # "minorSpan":I
    .end local v9    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v10    # "majorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v11    # "majorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "majorSpan":I
    .end local v14    # "minorSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v15    # "minorRange":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v18    # "minorWasDefined":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    move/from16 v8, v17

    move-object/from16 v0, p0

    goto :goto_2

    .line 787
    .end local v7    # "i":I
    .end local v16    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .end local v17    # "N":I
    .local v3, "axis":Landroid/support/v7/widget/GridLayout$Axis;
    :cond_e
    move-object/from16 v16, v3

    .end local v3    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v16    # "axis":Landroid/support/v7/widget/GridLayout$Axis;
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 836
    instance-of v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 837
    return v1

    .line 839
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 841
    .local v0, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    .line 842
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    .line 844
    return v2
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1

    .line 849
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 167
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 854
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 859
    instance-of v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 860
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$LayoutParams;)V

    return-object v0

    .line 861
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 862
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 864
    :cond_1
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .line 671
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 672
    .local v0, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    .line 675
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_3

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .line 989
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 990
    const/4 v0, 0x0

    return v0

    .line 992
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 47
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v6, p0

    .line 1017
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 1019
    sub-int v9, p4, p2

    .line 1020
    .local v9, "targetWidth":I
    sub-int v12, p5, p3

    .line 1022
    .local v12, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v13

    .line 1023
    .local v13, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v14

    .line 1024
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v15

    .line 1025
    .local v15, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v16

    .line 1027
    .local v16, "paddingBottom":I
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v1, v9, v13

    sub-int/2addr v1, v15

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1028
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v1, v12, v14

    sub-int v1, v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1030
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v17

    .line 1031
    .local v17, "hLocations":[I
    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 1033
    .local v18, "vLocations":[I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v1

    move v5, v0

    .end local v0    # "i":I
    .local v1, "N":I
    .local v5, "i":I
    :goto_0
    move v4, v1

    .end local v1    # "N":I
    .local v4, "N":I
    if-ge v5, v4, :cond_4

    .line 1034
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1035
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1033
    .end local v3    # "c":Landroid/view/View;
    move/from16 v43, v4

    move/from16 v39, v5

    goto/16 :goto_2

    .line 1036
    .restart local v3    # "c":Landroid/view/View;
    :cond_0
    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 1037
    .local v2, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    iget-object v1, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1038
    .local v1, "columnSpec":Landroid/support/v7/widget/GridLayout$Spec;
    iget-object v0, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1040
    .local v0, "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    iget-object v7, v1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1041
    .local v7, "colSpan":Landroid/support/v7/widget/GridLayout$Interval;
    iget-object v8, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1043
    .local v8, "rowSpan":Landroid/support/v7/widget/GridLayout$Interval;
    move-object/from16 v19, v2

    iget v2, v7, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .end local v2    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .local v19, "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    aget v20, v17, v2

    .line 1044
    .local v20, "x1":I
    iget v2, v8, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v21, v18, v2

    .line 1046
    .local v21, "y1":I
    iget v2, v7, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v22, v17, v2

    .line 1047
    .local v22, "x2":I
    iget v2, v8, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v23, v18, v2

    .line 1049
    .local v23, "y2":I
    sub-int v24, v22, v20

    .line 1050
    .local v24, "cellWidth":I
    sub-int v25, v23, v21

    .line 1052
    .local v25, "cellHeight":I
    const/4 v2, 0x1

    move-object/from16 v26, v7

    invoke-direct {v6, v3, v2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v7

    .line 1053
    .local v7, "pWidth":I
    .local v26, "colSpan":Landroid/support/v7/widget/GridLayout$Interval;
    const/4 v2, 0x0

    move-object/from16 v28, v8

    invoke-direct {v6, v3, v2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v8

    .line 1055
    .local v8, "pHeight":I
    .local v28, "rowSpan":Landroid/support/v7/widget/GridLayout$Interval;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v10

    .line 1056
    .local v10, "hAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v11

    .line 1058
    .local v11, "vAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    iget-object v2, v6, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1059
    .local v2, "boundsX":Landroid/support/v7/widget/GridLayout$Bounds;
    move-object/from16 v30, v0

    iget-object v0, v6, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .end local v0    # "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .local v30, "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1062
    .local v0, "boundsY":Landroid/support/v7/widget/GridLayout$Bounds;
    move-object/from16 v31, v1

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v27

    .end local v1    # "columnSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .local v31, "columnSpec":Landroid/support/v7/widget/GridLayout$Spec;
    sub-int v1, v24, v27

    invoke-virtual {v10, v3, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v27

    .line 1063
    .local v27, "gravityOffsetX":I
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v32

    sub-int v1, v25, v32

    invoke-virtual {v11, v3, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v32

    .line 1065
    .local v32, "gravityOffsetY":I
    const/4 v1, 0x1

    invoke-direct {v6, v3, v1, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    .line 1066
    .local v33, "leftMargin":I
    move-object/from16 v34, v0

    const/4 v0, 0x0

    invoke-direct {v6, v3, v0, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    .line 1067
    .end local v0    # "boundsY":Landroid/support/v7/widget/GridLayout$Bounds;
    .local v29, "topMargin":I
    .local v34, "boundsY":Landroid/support/v7/widget/GridLayout$Bounds;
    invoke-direct {v6, v3, v1, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v35

    .line 1068
    .local v35, "rightMargin":I
    invoke-direct {v6, v3, v0, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v36

    .line 1070
    .local v36, "bottomMargin":I
    add-int v37, v33, v35

    .line 1071
    .local v37, "sumMarginsX":I
    add-int v38, v29, v36

    .line 1074
    .local v38, "sumMarginsY":I
    add-int v39, v7, v37

    const/16 v40, 0x1

    move-object v0, v2

    move-object v1, v6

    move-object/from16 v41, v2

    move-object v2, v3

    .end local v2    # "boundsX":Landroid/support/v7/widget/GridLayout$Bounds;
    .local v41, "boundsX":Landroid/support/v7/widget/GridLayout$Bounds;
    move-object/from16 v42, v3

    move-object v3, v10

    .end local v3    # "c":Landroid/view/View;
    .local v42, "c":Landroid/view/View;
    move/from16 v43, v4

    move/from16 v4, v39

    .end local v4    # "N":I
    .local v43, "N":I
    move/from16 v39, v5

    move/from16 v5, v40

    .end local v5    # "i":I
    .local v39, "i":I
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v40

    .line 1075
    .local v40, "alignmentOffsetX":I
    add-int v4, v8, v38

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move-object/from16 v2, v42

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v0

    .line 1077
    .local v0, "alignmentOffsetY":I
    sub-int v1, v24, v37

    invoke-virtual {v10, v2, v7, v1}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v1

    .line 1078
    .end local v42    # "c":Landroid/view/View;
    .local v1, "width":I
    .local v2, "c":Landroid/view/View;
    sub-int v3, v25, v38

    invoke-virtual {v11, v2, v8, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v3

    .line 1080
    .local v3, "height":I
    add-int v4, v20, v27

    add-int v4, v4, v40

    .line 1082
    .local v4, "dx":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v5

    if-nez v5, :cond_1

    add-int v5, v13, v33

    add-int/2addr v5, v4

    goto :goto_1

    :cond_1
    sub-int v5, v9, v1

    sub-int/2addr v5, v15

    sub-int v5, v5, v35

    sub-int/2addr v5, v4

    .line 1084
    .local v5, "cx":I
    :goto_1
    add-int v42, v14, v21

    add-int v42, v42, v32

    add-int v42, v42, v0

    move/from16 v44, v0

    add-int v0, v42, v29

    .line 1086
    .local v0, "cy":I
    .local v44, "alignmentOffsetY":I
    move/from16 v45, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .end local v4    # "dx":I
    .local v45, "dx":I
    if-ne v1, v4, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 1087
    :cond_2
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 1089
    :cond_3
    add-int v4, v5, v1

    add-int v6, v0, v3

    invoke-virtual {v2, v5, v0, v4, v6}, Landroid/view/View;->layout(IIII)V

    .line 1033
    .end local v0    # "cy":I
    .end local v1    # "width":I
    .end local v2    # "c":Landroid/view/View;
    .end local v3    # "height":I
    .end local v5    # "cx":I
    .end local v7    # "pWidth":I
    .end local v8    # "pHeight":I
    .end local v10    # "hAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v11    # "vAlign":Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v19    # "lp":Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v20    # "x1":I
    .end local v21    # "y1":I
    .end local v22    # "x2":I
    .end local v23    # "y2":I
    .end local v24    # "cellWidth":I
    .end local v25    # "cellHeight":I
    .end local v26    # "colSpan":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v27    # "gravityOffsetX":I
    .end local v28    # "rowSpan":Landroid/support/v7/widget/GridLayout$Interval;
    .end local v29    # "topMargin":I
    .end local v30    # "rowSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v31    # "columnSpec":Landroid/support/v7/widget/GridLayout$Spec;
    .end local v32    # "gravityOffsetY":I
    .end local v33    # "leftMargin":I
    .end local v34    # "boundsY":Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v35    # "rightMargin":I
    .end local v36    # "bottomMargin":I
    .end local v37    # "sumMarginsX":I
    .end local v38    # "sumMarginsY":I
    .end local v40    # "alignmentOffsetX":I
    .end local v41    # "boundsX":Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v44    # "alignmentOffsetY":I
    .end local v45    # "dx":I
    :goto_2
    add-int/lit8 v5, v39, 0x1

    .end local v39    # "i":I
    .local v5, "i":I
    move/from16 v1, v43

    move-object/from16 v6, p0

    goto/16 :goto_0

    .line 1091
    .end local v5    # "i":I
    .end local v43    # "N":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 948
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 952
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 954
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 955
    .local v0, "hPadding":I
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 957
    .local v1, "vPadding":I
    neg-int v2, v0

    invoke-static {p1, v2}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v2

    .line 958
    .local v2, "widthSpecSansPadding":I
    neg-int v3, v1

    invoke-static {p2, v3}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v3

    .line 960
    .local v3, "heightSpecSansPadding":I
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 966
    iget v4, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 967
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 968
    .local v4, "widthSansPadding":I
    invoke-direct {p0, v2, v3, v5}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 969
    iget-object v6, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .local v6, "heightSansPadding":I
    goto :goto_0

    .line 971
    .end local v4    # "widthSansPadding":I
    .end local v6    # "heightSansPadding":I
    :cond_0
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v4, v3}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .line 972
    .restart local v6    # "heightSansPadding":I
    invoke-direct {p0, v2, v3, v5}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 973
    iget-object v4, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v4

    .line 976
    .restart local v4    # "widthSansPadding":I
    :goto_0
    add-int v7, v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 977
    .local v7, "measuredWidth":I
    add-int v8, v6, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 979
    .local v8, "measuredHeight":I
    nop

    .line 980
    invoke-static {v7, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v9

    .line 981
    invoke-static {v8, p2, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 979
    invoke-virtual {p0, v9, v5}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 982
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 997
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 998
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 999
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .line 505
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    .line 506
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 507
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 424
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 425
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 426
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    .line 576
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 577
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 578
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 579
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 355
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 356
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    .line 357
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 358
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 360
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    .line 390
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 391
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 392
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 393
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 541
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 542
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 543
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    .line 469
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    .line 470
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 471
    return-void
.end method
