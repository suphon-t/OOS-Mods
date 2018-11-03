.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/SmartReplyController;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/widget/Button;

.field private final synthetic f$5:Landroid/app/RemoteInput;

.field private final synthetic f$6:Ljava/lang/CharSequence;

.field private final synthetic f$7:Landroid/app/PendingIntent;

.field private final synthetic f$8:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;ILandroid/widget/Button;Landroid/app/RemoteInput;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$1:Lcom/android/systemui/statusbar/SmartReplyController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$2:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$4:Landroid/widget/Button;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$5:Landroid/app/RemoteInput;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$6:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$7:Landroid/app/PendingIntent;

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$8:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$1:Lcom/android/systemui/statusbar/SmartReplyController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$2:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$4:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$5:Landroid/app/RemoteInput;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$6:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$7:Landroid/app/PendingIntent;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$UwLdHmeZSqfnZQeDlBO5lJ6m-GM;->f$8:Landroid/content/Context;

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$inflateReplyButton$1(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/NotificationData$Entry;ILandroid/widget/Button;Landroid/app/RemoteInput;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
