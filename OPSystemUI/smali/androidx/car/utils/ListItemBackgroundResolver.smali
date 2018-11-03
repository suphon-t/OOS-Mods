.class public Landroidx/car/utils/ListItemBackgroundResolver;
.super Ljava/lang/Object;
.source "ListItemBackgroundResolver.java"


# direct methods
.method public static setBackground(Landroid/view/View;II)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currentPosition"    # I
    .param p2, "totalItems"    # I

    .line 45
    if-ltz p1, :cond_4

    .line 49
    if-ge p1, p2, :cond_3

    .line 55
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 57
    sget v0, Landroidx/car/R$drawable;->car_card_rounded_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 58
    :cond_0
    if-nez p1, :cond_1

    .line 60
    sget v0, Landroidx/car/R$drawable;->car_card_rounded_top_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_2

    .line 63
    sget v0, Landroidx/car/R$drawable;->car_card_rounded_bottom_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 66
    :cond_2
    sget v0, Landroidx/car/R$drawable;->car_card_background:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    :goto_0
    return-void

    .line 50
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "totalItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "currentPosition cannot be less than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
