.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7UrwOtEqIe00ZNOqBZi_pu7VOc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7UrwOtEqIe00ZNOqBZi_pu7VOc0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7UrwOtEqIe00ZNOqBZi_pu7VOc0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7UrwOtEqIe00ZNOqBZi_pu7VOc0;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$7UrwOtEqIe00ZNOqBZi_pu7VOc0;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$updateTheme$39(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    return-void
.end method
