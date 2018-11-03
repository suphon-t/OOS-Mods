.class public final synthetic Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;->f$0:I

    iput-boolean p2, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;->f$0:I

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$$Lambda$PipMenuActivityController$oZuzXTzYX29YiUgUX8-q8QZcGtw;->f$1:Z

    check-cast p1, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->lambda$onMenuStateChanged$1(IZLcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    return-void
.end method
