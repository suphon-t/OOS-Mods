.class public final synthetic Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;

    invoke-direct {v0}, Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;-><init>()V

    sput-object v0, Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;->INSTANCE:Landroidx/car/widget/-$$Lambda$S-EZJp6rVWMiTQ299o0KnvcXb2Q;

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

    invoke-static {p1}, Landroidx/car/widget/SeekbarListItem;->createViewHolder(Landroid/view/View;)Landroidx/car/widget/SeekbarListItem$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/car/widget/ListItem$ViewHolder;

    return-object p1
.end method
