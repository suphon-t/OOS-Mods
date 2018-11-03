.class public abstract Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.super Ljava/lang/Object;
.source "AnimatableProperty.java"


# static fields
.field public static final X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field public static final Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    const v1, 0x7f0a0484

    const v2, 0x7f0a0486

    const v3, 0x7f0a0485

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->X:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 35
    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    const v1, 0x7f0a0487

    const v2, 0x7f0a0489

    const v3, 0x7f0a0488

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Landroid/util/Property;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .locals 1
    .param p1, "animatorTag"    # I
    .param p2, "startValueTag"    # I
    .param p3, "endValueTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;III)",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;"
        }
    .end annotation

    .line 85
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;

    invoke-direct {v0, p2, p3, p1, p0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;-><init>(IIILandroid/util/Property;)V

    return-object v0
.end method

.method public static from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p3, "animatorTag"    # I
    .param p4, "startValueTag"    # I
    .param p5, "endValueTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/Float;",
            ">;III)",
            "Lcom/android/systemui/statusbar/notification/AnimatableProperty;"
        }
    .end annotation

    .line 48
    .local p1, "setter":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TT;Ljava/lang/Float;>;"
    .local p2, "getter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/Float;>;"
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 60
    .local v0, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;

    invoke-direct {v1, p4, p5, p3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;-><init>(IIILandroid/util/Property;)V

    return-object v1
.end method


# virtual methods
.method public abstract getAnimationEndTag()I
.end method

.method public abstract getAnimationStartTag()I
.end method

.method public abstract getAnimatorTag()I
.end method

.method public abstract getProperty()Landroid/util/Property;
.end method
