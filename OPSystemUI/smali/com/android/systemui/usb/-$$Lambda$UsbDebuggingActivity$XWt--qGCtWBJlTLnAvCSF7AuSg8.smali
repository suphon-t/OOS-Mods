.class public final synthetic Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;

    invoke-direct {v0}, Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;-><init>()V

    sput-object v0, Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;->INSTANCE:Lcom/android/systemui/usb/-$$Lambda$UsbDebuggingActivity$XWt--qGCtWBJlTLnAvCSF7AuSg8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/systemui/usb/UsbDebuggingActivity;->lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
