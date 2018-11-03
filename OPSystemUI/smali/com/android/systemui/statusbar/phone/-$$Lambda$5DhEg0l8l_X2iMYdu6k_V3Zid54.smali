.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$5DhEg0l8l_X2iMYdu6k_V3Zid54;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSFragment;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSFragment;-><init>()V

    check-cast v0, Lcom/android/systemui/plugins/qs/QS;

    return-object v0
.end method
