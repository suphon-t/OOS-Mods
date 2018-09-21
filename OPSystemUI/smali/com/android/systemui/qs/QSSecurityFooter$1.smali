.class Lcom/android/systemui/qs/QSSecurityFooter$1;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSSecurityFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSSecurityFooter;

    .line 443
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter$1;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter$1;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v0}, Lcom/android/systemui/qs/QSSecurityFooter;->access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter$1;->this$0:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-static {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->access$200(Lcom/android/systemui/qs/QSSecurityFooter;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    return-void
.end method
