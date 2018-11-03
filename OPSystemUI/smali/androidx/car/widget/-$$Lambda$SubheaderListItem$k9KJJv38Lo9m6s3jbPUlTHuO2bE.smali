.class public final synthetic Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/car/widget/ListItem$ViewBinder;


# instance fields
.field private final synthetic f$0:Landroidx/car/widget/SubheaderListItem;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/car/widget/SubheaderListItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;->f$0:Landroidx/car/widget/SubheaderListItem;

    iput p2, p0, Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;->f$1:I

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;->f$0:Landroidx/car/widget/SubheaderListItem;

    iget v1, p0, Landroidx/car/widget/-$$Lambda$SubheaderListItem$k9KJJv38Lo9m6s3jbPUlTHuO2bE;->f$1:I

    check-cast p1, Landroidx/car/widget/SubheaderListItem$ViewHolder;

    invoke-static {v0, v1, p1}, Landroidx/car/widget/SubheaderListItem;->lambda$setText$35(Landroidx/car/widget/SubheaderListItem;ILandroidx/car/widget/SubheaderListItem$ViewHolder;)V

    return-void
.end method
