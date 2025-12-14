.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getMethodData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPaymentOptions()Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;
.end method

.method public abstract getRawTotal()Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;
.end method

.method public abstract getUnmodifiableModifiers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;"
        }
    .end annotation
.end method
