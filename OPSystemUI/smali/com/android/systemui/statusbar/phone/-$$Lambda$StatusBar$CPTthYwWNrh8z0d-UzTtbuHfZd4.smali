.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$CPTthYwWNrh8z0d-UzTtbuHfZd4;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast p1, Lcom/android/systemui/statusbar/phone/ScrimState;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$4(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ScrimState;Ljava/lang/Float;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    return-void
.end method
