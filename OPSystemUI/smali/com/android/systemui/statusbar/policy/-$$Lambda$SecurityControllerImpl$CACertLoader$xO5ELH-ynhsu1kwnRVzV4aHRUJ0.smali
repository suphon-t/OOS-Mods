.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

.field private final synthetic f$1:[Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;[Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;->f$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;->f$1:[Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;->f$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;->f$1:[Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->lambda$doInBackground$0(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;[Ljava/lang/Integer;)V

    return-void
.end method
