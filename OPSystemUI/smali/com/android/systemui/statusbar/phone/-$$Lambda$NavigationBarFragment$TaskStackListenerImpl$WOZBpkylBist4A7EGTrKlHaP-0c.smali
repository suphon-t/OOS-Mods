.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;->f$0:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$TaskStackListenerImpl$WOZBpkylBist4A7EGTrKlHaP-0c;->f$1:I

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;->lambda$onActivityRequestedOrientationChanged$0(Lcom/android/systemui/statusbar/phone/NavigationBarFragment$TaskStackListenerImpl;ILandroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method
