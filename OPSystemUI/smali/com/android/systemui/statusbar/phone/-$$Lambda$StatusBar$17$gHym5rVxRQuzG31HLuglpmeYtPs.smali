.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$17$gHym5rVxRQuzG31HLuglpmeYtPs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar$17;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$17;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$17$gHym5rVxRQuzG31HLuglpmeYtPs;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$17;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$17$gHym5rVxRQuzG31HLuglpmeYtPs;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar$17;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;->lambda$onFinishedGoingToSleep$0(Lcom/android/systemui/statusbar/phone/StatusBar$17;)V

    return-void
.end method
