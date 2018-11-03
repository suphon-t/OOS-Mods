.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/Animatable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;->f$0:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$dWuG3P2xqsast1TFpf_9V5OJbdM;->f$0:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method
