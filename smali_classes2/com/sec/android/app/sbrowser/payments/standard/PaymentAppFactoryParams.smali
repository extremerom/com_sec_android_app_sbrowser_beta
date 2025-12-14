.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/PaymentAppFactoryParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestParams;


# virtual methods
.method public getCertificateChain()[[B
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPaymentRequestOrigin()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPaymentRequestSecurityOrigin()Lcom/sec/terrace/services/payments/mojom/TerraceOrigin;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTerrace()Lcom/sec/terrace/Terrace;
.end method

.method public getTopLevelOrigin()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTwaPackageName(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/payments/standard/common/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
