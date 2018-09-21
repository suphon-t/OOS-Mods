.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$LongPressListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationGutsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$c60ntPGLw0RNAFWdGf1n1pJttuQ;->f$0:Lcom/android/systemui/statusbar/NotificationGutsManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p1

    return p1
.end method
