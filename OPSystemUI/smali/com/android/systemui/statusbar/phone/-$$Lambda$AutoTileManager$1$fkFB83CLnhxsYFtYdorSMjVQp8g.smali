.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$1$fkFB83CLnhxsYFtYdorSMjVQp8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$1$fkFB83CLnhxsYFtYdorSMjVQp8g;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$AutoTileManager$1$fkFB83CLnhxsYFtYdorSMjVQp8g;->f$0:Lcom/android/systemui/statusbar/phone/AutoTileManager$1;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$1;->lambda$handleValueChanged$0(Lcom/android/systemui/statusbar/phone/AutoTileManager$1;)V

    return-void
.end method
