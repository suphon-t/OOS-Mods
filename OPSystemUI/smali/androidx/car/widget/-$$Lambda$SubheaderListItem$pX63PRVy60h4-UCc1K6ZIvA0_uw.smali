.class public final synthetic Landroidx/car/widget/-$$Lambda$SubheaderListItem$pX63PRVy60h4-UCc1K6ZIvA0_uw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/car/widget/ListItem$ViewBinder;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/car/widget/-$$Lambda$SubheaderListItem$pX63PRVy60h4-UCc1K6ZIvA0_uw;->f$0:I

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/car/widget/-$$Lambda$SubheaderListItem$pX63PRVy60h4-UCc1K6ZIvA0_uw;->f$0:I

    check-cast p1, Landroidx/car/widget/SubheaderListItem$ViewHolder;

    invoke-static {v0, p1}, Landroidx/car/widget/SubheaderListItem;->lambda$setItemLayoutHeight$34(ILandroidx/car/widget/SubheaderListItem$ViewHolder;)V

    return-void
.end method
