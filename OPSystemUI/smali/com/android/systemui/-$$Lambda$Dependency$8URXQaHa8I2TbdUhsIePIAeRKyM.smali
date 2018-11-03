.class public final synthetic Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/io/FileDescriptor;

.field private final synthetic f$1:Ljava/io/PrintWriter;

.field private final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;->f$0:Ljava/io/FileDescriptor;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;->f$1:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;->f$0:Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;->f$1:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/systemui/-$$Lambda$Dependency$8URXQaHa8I2TbdUhsIePIAeRKyM;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/Dependency;->lambda$dump$62(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
