.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;->f$1:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$bkd2NbKjjDMBWKcdJ2fG14LddEs;->f$1:Lcom/android/systemui/qs/QSTileHost;

    invoke-static {v0, v1, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$8(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
