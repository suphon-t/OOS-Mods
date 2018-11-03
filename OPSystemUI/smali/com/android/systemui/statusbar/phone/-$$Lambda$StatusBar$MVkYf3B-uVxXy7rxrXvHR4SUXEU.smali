.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$MVkYf3B-uVxXy7rxrXvHR4SUXEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$MVkYf3B-uVxXy7rxrXvHR4SUXEU;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$MVkYf3B-uVxXy7rxrXvHR4SUXEU;->f$0:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$MVkYf3B-uVxXy7rxrXvHR4SUXEU(Landroid/view/View;)Z

    return-void
.end method
