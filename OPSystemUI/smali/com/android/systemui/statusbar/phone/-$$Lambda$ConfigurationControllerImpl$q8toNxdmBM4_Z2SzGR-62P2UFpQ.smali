.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

.field private final synthetic f$1:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;->f$0:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;->f$1:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;->f$0:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$q8toNxdmBM4_Z2SzGR-62P2UFpQ;->f$1:Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lambda$onConfigurationChanged$0(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
