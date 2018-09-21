.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;->f$0:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ConfigurationControllerImpl$vqa1un3Hr9_5bDPhhhNK1qKD-2o;->f$0:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lambda$onConfigurationChanged$1(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method
