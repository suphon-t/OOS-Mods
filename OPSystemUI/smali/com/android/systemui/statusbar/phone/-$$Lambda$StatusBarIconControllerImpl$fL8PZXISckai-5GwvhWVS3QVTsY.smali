.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z

.field private final synthetic f$3:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$2:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$3:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$0:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$2:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarIconControllerImpl$fL8PZXISckai-5GwvhWVS3QVTsY;->f$3:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$addSystemIcon$0(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method
