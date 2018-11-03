.class public final synthetic Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/volume/ZenModePanel;

.field private final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/volume/ZenModePanel;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;->f$0:Lcom/android/systemui/volume/ZenModePanel;

    iput-object p2, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;->f$0:Lcom/android/systemui/volume/ZenModePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/-$$Lambda$ZenModePanel$B3Y2r55PL6J4kgbiM4zXPpDTjiA;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->lambda$setAutoText$3(Lcom/android/systemui/volume/ZenModePanel;Ljava/lang/CharSequence;)V

    return-void
.end method
