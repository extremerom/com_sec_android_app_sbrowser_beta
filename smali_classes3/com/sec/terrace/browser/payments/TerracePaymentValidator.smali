.class public Lcom/sec/terrace/browser/payments/TerracePaymentValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static validatePaymentDetails(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetails;)Lorg/chromium/payments/mojom/PaymentDetails;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentValidatorJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;->validatePaymentDetails(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method

.method public static validatePaymentValidationErrors(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentValidationErrors;)Lorg/chromium/payments/mojom/PaymentValidationErrors;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/payments/TerracePaymentValidatorJni;->get()Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/payments/TerracePaymentValidator$Natives;->validatePaymentValidationErrors(Ljava/nio/ByteBuffer;)Z

    move-result p0

    return p0
.end method
