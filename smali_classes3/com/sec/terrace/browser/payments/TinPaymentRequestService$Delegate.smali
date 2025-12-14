.class public interface abstract Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lorg/chromium/components/url_formatter/UrlFormatter;->formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getInvalidSslCertificateErrorMessage()Ljava/lang/String;
.end method

.method public abstract getTwaPackageName()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public isOriginAllowedToUseWebPaymentApis(Lorg/chromium/url/GURL;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentUrlUtil;->isOriginAllowedToUseWebPaymentApis(Lorg/chromium/url/GURL;)Z

    move-result p0

    return p0
.end method

.method public isOriginSecure(Lorg/chromium/url/GURL;)Z
    .locals 0

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isOriginSecure(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract skipUiForBasicCard()Z
.end method
