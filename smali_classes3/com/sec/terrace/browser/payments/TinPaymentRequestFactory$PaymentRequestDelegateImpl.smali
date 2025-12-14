.class public Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentRequestDelegateImpl"
.end annotation


# instance fields
.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method

.method private getLiveWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {p0}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getInvalidSslCertificateErrorMessage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;->getLiveWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isSchemeCryptographic(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getTwaPackageName()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {p0}, Lorg/chromium/components/payments/PaymentRequestServiceUtil;->getLiveWebContents(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/TinActivityUtils;->getActivityFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object p0

    instance-of v1, p0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;->isInTwaMode()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p0}, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;->getTwaPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public skipUiForBasicCard()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
