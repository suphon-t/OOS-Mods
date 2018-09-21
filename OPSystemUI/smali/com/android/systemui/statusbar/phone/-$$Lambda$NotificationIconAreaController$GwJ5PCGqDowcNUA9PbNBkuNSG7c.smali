.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NotificationIconAreaController$GwJ5PCGqDowcNUA9PbNBkuNSG7c;

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

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$updateStatusBarIcons$1(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object p1

    return-object p1
.end method
