.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;->INSTANCE:Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UA3QkbRzztEFRlbb86djKcGIV5E;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$static$0(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
