.class Lcom/sec/terrace/browser/payments/TerracePaymentValidatorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/payments/TerracePaymentValidatorJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/payments/TerracePaymentValidatorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public validatePaymentDetails(Ljava/nio/ByteBuffer;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->ME0g4il5(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public validatePaymentValidationErrors(Ljava/nio/ByteBuffer;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MspIFgfV(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
