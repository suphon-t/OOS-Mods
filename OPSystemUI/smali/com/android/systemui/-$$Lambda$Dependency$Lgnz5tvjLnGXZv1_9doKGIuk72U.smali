.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;

    invoke-direct {v0}, Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;-><init>()V

    sput-object v0, Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;->INSTANCE:Lcom/android/systemui/-$$Lambda$Dependency$Lgnz5tvjLnGXZv1_9doKGIuk72U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/android/systemui/Dependency;->lambda$start$42()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
