.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$aLenH7zcwVaIHX6ie2fIXARtA4g;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$5(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Integer;)V

    return-void
.end method
