.class public final synthetic Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/car/widget/ListItem$ViewBinder;


# instance fields
.field private final synthetic f$0:Landroidx/car/widget/SeekbarListItem;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroidx/car/widget/SeekbarListItem;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;->f$0:Landroidx/car/widget/SeekbarListItem;

    iput p2, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;->f$1:I

    iput p3, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;->f$2:I

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;->f$0:Landroidx/car/widget/SeekbarListItem;

    iget v1, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;->f$1:I

    iget v2, p0, Landroidx/car/widget/-$$Lambda$SeekbarListItem$M6J7eTnHpelBrTbuwhJIUrOJKxw;->f$2:I

    check-cast p1, Landroidx/car/widget/SeekbarListItem$ViewHolder;

    invoke-static {v0, v1, v2, p1}, Landroidx/car/widget/SeekbarListItem;->lambda$setPrimaryActionLayout$42(Landroidx/car/widget/SeekbarListItem;IILandroidx/car/widget/SeekbarListItem$ViewHolder;)V

    return-void
.end method
