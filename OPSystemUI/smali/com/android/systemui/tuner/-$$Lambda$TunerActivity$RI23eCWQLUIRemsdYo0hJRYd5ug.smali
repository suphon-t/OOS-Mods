.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;

    invoke-direct {v0}, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;-><init>()V

    sput-object v0, Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;->INSTANCE:Lcom/android/systemui/tuner/-$$Lambda$TunerActivity$RI23eCWQLUIRemsdYo0hJRYd5ug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/fragments/FragmentService;

    invoke-static {p1}, Lcom/android/systemui/tuner/TunerActivity;->lambda$onDestroy$0(Lcom/android/systemui/fragments/FragmentService;)V

    return-void
.end method
