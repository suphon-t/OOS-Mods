.class final Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ItemComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/volume/OutputChooserLayout$Item;",
        ">;"
    }
.end annotation


# static fields
.field public static final sInstance:Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 658
    new-instance v0, Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;

    invoke-direct {v0}, Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;->sInstance:Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/volume/OutputChooserLayout$Item;Lcom/android/systemui/volume/OutputChooserLayout$Item;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/systemui/volume/OutputChooserLayout$Item;
    .param p2, "rhs"    # Lcom/android/systemui/volume/OutputChooserLayout$Item;

    .line 663
    iget-boolean v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    iget-boolean v1, p2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    if-eq v0, v1, :cond_0

    .line 664
    iget-boolean v0, p2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    iget-boolean v1, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->canDisconnect:Z

    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result v0

    return v0

    .line 667
    :cond_0
    iget v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    iget v1, p2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    if-eq v0, v1, :cond_1

    .line 668
    iget v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    iget v1, p2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->deviceType:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0

    .line 671
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/android/systemui/volume/OutputChooserLayout$Item;->line1:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 657
    check-cast p1, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    check-cast p2, Lcom/android/systemui/volume/OutputChooserLayout$Item;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/OutputChooserDialog$ItemComparator;->compare(Lcom/android/systemui/volume/OutputChooserLayout$Item;Lcom/android/systemui/volume/OutputChooserLayout$Item;)I

    move-result p1

    return p1
.end method
