.class public final synthetic Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$Oh-NzDEMM2yCWnVYbU2_DKTzaqo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$Oh-NzDEMM2yCWnVYbU2_DKTzaqo;->f$0:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/external/-$$Lambda$CustomTile$Oh-NzDEMM2yCWnVYbU2_DKTzaqo;->f$0:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->lambda$handleUpdateState$0(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v0

    return-object v0
.end method
