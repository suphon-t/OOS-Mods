.class public abstract Lkotlin/jvm/internal/Lambda;
.super Ljava/lang/Object;
.source "Lambda.kt"

# interfaces
.implements Lkotlin/jvm/internal/FunctionBase;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/jvm/internal/FunctionBase<",
        "TR;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlin/jvm/internal/Lambda;->arity:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->renderLambdaToString(Lkotlin/jvm/internal/Lambda;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Reflection.renderLambdaToString(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
