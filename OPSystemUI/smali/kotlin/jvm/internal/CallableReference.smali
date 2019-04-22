.class public abstract Lkotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source "CallableReference.java"

# interfaces
.implements Lkotlin/reflect/KCallable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/CallableReference$NoReceiver;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lkotlin/reflect/KCallable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lkotlin/jvm/internal/CallableReference$NoReceiver;->access$000()Lkotlin/jvm/internal/CallableReference$NoReceiver;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compute()Lkotlin/reflect/KCallable;
    .locals 1

    .line 65
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lkotlin/reflect/KCallable;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->computeReflected()Lkotlin/reflect/KCallable;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lkotlin/reflect/KCallable;

    :cond_0
    return-object v0
.end method

.method protected abstract computeReflected()Lkotlin/reflect/KCallable;
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 0

    .line 60
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 97
    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 0

    .line 89
    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method

.method protected getReflected()Lkotlin/reflect/KCallable;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lkotlin/reflect/KCallable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {p0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    .line 109
    new-instance p0, Ljava/lang/AbstractMethodError;

    invoke-direct {p0}, Ljava/lang/AbstractMethodError;-><init>()V

    throw p0
.end method
