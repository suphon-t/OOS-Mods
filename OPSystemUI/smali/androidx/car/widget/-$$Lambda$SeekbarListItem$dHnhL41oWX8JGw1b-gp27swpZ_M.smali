.class public final synthetic Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/car/widget/ListItem$ViewBinder;


# instance fields
.field private final synthetic f$0:I

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;->f$0:I

    iput p2, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;->f$1:I

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;->f$0:I

    iget v1, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$dHnhL41oWX8JGw1b-gp27swpZ_M;->f$1:I

    check-cast p1, Landroidx/car/widget/SeekbarListItem$ViewHolder;

    invoke-static {v0, v1, p1}, Landroidx/car/widget/SeekbarListItem;->lambda$setSupplementalActionLayout$46(IILandroidx/car/widget/SeekbarListItem$ViewHolder;)V

    return-void
.end method
