.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$Zm3Yj0EQnVWvu_ZksQ-OsrTwJ3k;

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

    check-cast p1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    return-object p1
.end method
