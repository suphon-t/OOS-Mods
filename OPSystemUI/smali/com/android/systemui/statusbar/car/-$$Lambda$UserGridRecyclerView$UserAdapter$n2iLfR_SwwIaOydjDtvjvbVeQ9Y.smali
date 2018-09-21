.class public final synthetic Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;->f$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;->f$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    iput-object p3, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;->f$2:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;->f$0:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;->f$1:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/-$$Lambda$UserGridRecyclerView$UserAdapter$n2iLfR_SwwIaOydjDtvjvbVeQ9Y;->f$2:Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;->lambda$onBindViewHolder$0(Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserRecord;Lcom/android/systemui/statusbar/car/UserGridRecyclerView$UserAdapter$UserAdapterViewHolder;Landroid/view/View;)V

    return-void
.end method
