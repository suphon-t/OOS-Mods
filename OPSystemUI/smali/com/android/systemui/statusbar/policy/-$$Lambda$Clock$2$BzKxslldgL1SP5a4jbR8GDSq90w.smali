.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

.field private final synthetic f$1:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;->f$1:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$BzKxslldgL1SP5a4jbR8GDSq90w;->f$1:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$1(Lcom/android/systemui/statusbar/policy/Clock$2;Ljava/util/Locale;)V

    return-void
.end method
