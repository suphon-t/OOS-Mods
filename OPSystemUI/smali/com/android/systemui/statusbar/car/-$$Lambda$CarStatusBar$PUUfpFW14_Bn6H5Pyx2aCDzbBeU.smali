.class public final synthetic Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;->f$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$CarStatusBar$PUUfpFW14_Bn6H5Pyx2aCDzbBeU;->f$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->lambda$makeStatusBarView$0(Lcom/android/systemui/statusbar/car/CarStatusBar;Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
