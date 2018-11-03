.class public final synthetic Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;->f$0:Z

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/android/systemui/DockedStackExistsListener;->lambda$onDockedStackExistsChanged$0(ZLjava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
