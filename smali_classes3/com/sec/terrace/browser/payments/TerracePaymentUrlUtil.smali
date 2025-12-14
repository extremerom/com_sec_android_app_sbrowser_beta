.class public Lcom/sec/terrace/browser/payments/TerracePaymentUrlUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isValidUrlBasedPaymentMethodIdentifier(Lcom/sec/terrace/browser/payments/TerraceGURL;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TerraceGURL;->getGURL()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil;->isValidUrlBasedPaymentMethodIdentifier(Lorg/chromium/url/GURL;)Z

    move-result p0

    return p0
.end method
