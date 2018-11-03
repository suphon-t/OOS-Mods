.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1lxmukd3g368Ipe-wYASjfRCObk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1lxmukd3g368Ipe-wYASjfRCObk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$1lxmukd3g368Ipe-wYASjfRCObk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$createNavigationBar$10(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
