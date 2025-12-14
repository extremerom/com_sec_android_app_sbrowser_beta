.class public Lcom/sec/terrace/browser/payments/TerraceCanMakePaymentQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerraceCanMakePaymentQuery$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static canQuery(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/Terrace;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;

    invoke-static {v3}, Lcom/sec/terrace/browser/payments/TinPaymentRequestConverter;->toConvert(Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;)Lorg/chromium/payments/mojom/PaymentMethodData;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/payments/TerraceCanMakePaymentQueryJni;->get()Lcom/sec/terrace/browser/payments/TerraceCanMakePaymentQuery$Natives;

    move-result-object p3

    invoke-static {p0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-interface {p3, p0, p1, p2, v0}, Lcom/sec/terrace/browser/payments/TerraceCanMakePaymentQuery$Natives;->canQuery(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private static getMethodIdentifiers(Ljava/util/Map;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/payments/mojom/PaymentMethodData;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static getStringifiedMethodData(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/payments/mojom/PaymentMethodData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/payments/mojom/PaymentMethodData;

    iget-object p0, p0, Lorg/chromium/payments/mojom/PaymentMethodData;->stringifiedData:Ljava/lang/String;

    return-object p0
.end method
