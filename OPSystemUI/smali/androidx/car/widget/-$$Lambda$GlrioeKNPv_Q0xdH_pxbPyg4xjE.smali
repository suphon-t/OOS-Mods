.class public final synthetic Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;

    invoke-direct {v0}, Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;-><init>()V

    sput-object v0, Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;->INSTANCE:Landroidx/car/widget/-$$Lambda$GlrioeKNPv_Q0xdH_pxbPyg4xjE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/car/widget/SubheaderListItem;->createViewHolder(Landroid/view/View;)Landroidx/car/widget/SubheaderListItem$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/car/widget/ListItem$ViewHolder;

    return-object p1
.end method
