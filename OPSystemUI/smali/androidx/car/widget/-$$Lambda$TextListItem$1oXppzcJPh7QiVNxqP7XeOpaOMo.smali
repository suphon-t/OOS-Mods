.class public final synthetic Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/car/widget/ListItem$ViewBinder;


# instance fields
.field private final synthetic f$0:Landroidx/car/widget/TextListItem;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroidx/car/widget/TextListItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;->f$0:Landroidx/car/widget/TextListItem;

    iput p2, p0, Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;->f$1:I

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;->f$0:Landroidx/car/widget/TextListItem;

    iget v1, p0, Landroidx/car/widget/-$$Lambda$TextListItem$1oXppzcJPh7QiVNxqP7XeOpaOMo;->f$1:I

    check-cast p1, Landroidx/car/widget/TextListItem$ViewHolder;

    invoke-static {v0, v1, p1}, Landroidx/car/widget/TextListItem;->lambda$setTextEndLayout$23(Landroidx/car/widget/TextListItem;ILandroidx/car/widget/TextListItem$ViewHolder;)V

    return-void
.end method
