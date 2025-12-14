.class public Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;
    }
.end annotation


# instance fields
.field private mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

.field private mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

.field private final mDelegate:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

.field private mHasClosed:Z

.field private final mMerchantName:Ljava/lang/String;

.field private final mOnClosedListener:Ljava/lang/Runnable;

.field private final mPaymentOptions:Lorg/chromium/payments/mojom/PaymentOptions;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPaymentRequestOrigin:Ljava/lang/String;

.field private final mPaymentRequestSecurityOrigin:Lorg/chromium/url/Origin;

.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

.field private final mRequestPayerEmail:Z

.field private final mRequestPayerName:Z

.field private final mRequestPayerPhone:Z

.field private final mRequestShipping:Z

.field private mSkipUiForNonUrlPaymentMethodIdentifiers:Z

.field private final mTopLevelOrigin:Ljava/lang/String;

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method private constructor <init>(Lorg/chromium/payments/mojom/PaymentRequestClient;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/payments/mojom/PaymentOptions;ZLjava/lang/Runnable;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedOrigin()Lorg/chromium/url/Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mPaymentRequestSecurityOrigin:Lorg/chromium/url/Origin;

    iput-object p3, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p2}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedURL()Lorg/chromium/url/GURL;

    move-result-object p2

    invoke-interface {p7, p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mPaymentRequestOrigin:Ljava/lang/String;

    invoke-interface {p3}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Lorg/chromium/url/GURL;

    move-result-object p2

    invoke-interface {p7, p2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->formatUrlForSecurityDisplay(Lorg/chromium/url/GURL;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mTopLevelOrigin:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mPaymentOptions:Lorg/chromium/payments/mojom/PaymentOptions;

    iget-boolean p2, p4, Lorg/chromium/payments/mojom/PaymentOptions;->requestShipping:Z

    iput-boolean p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRequestShipping:Z

    iget-boolean p2, p4, Lorg/chromium/payments/mojom/PaymentOptions;->requestPayerName:Z

    iput-boolean p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRequestPayerName:Z

    iget-boolean p2, p4, Lorg/chromium/payments/mojom/PaymentOptions;->requestPayerPhone:Z

    iput-boolean p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRequestPayerPhone:Z

    iget-boolean p2, p4, Lorg/chromium/payments/mojom/PaymentOptions;->requestPayerEmail:Z

    iput-boolean p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRequestPayerEmail:Z

    invoke-interface {p3}, Lorg/chromium/content_public/browser/WebContents;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mMerchantName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mSkipUiForNonUrlPaymentMethodIdentifiers:Z

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    iput-object p6, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mOnClosedListener:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mDelegate:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mHasClosed:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->lambda$createPaymentRequest$0(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    move-result-object p0

    return-object p0
.end method

.method private static abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V
    .locals 2
    .param p0    # Lorg/chromium/payments/mojom/PaymentRequestClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PaymentRequestServ"

    invoke-static {v1, p1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static createIfParamsValid(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
    .locals 12
    .param p3    # Lorg/chromium/payments/mojom/PaymentRequestClient;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Lorg/chromium/payments/mojom/PaymentMethodData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lorg/chromium/payments/mojom/PaymentDetails;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lorg/chromium/payments/mojom/PaymentOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object v1, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static {p0}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v3

    const/4 v0, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "Invalid state."

    invoke-static {v10, v1, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V

    return-object v10

    :cond_1
    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Lorg/chromium/url/GURL;

    move-result-object v2

    move-object/from16 v7, p8

    invoke-interface {v7, v2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->isOriginSecure(Lorg/chromium/url/GURL;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Not in a secure origin."

    invoke-static {p3, v2, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V

    return-object v10

    :cond_2
    if-nez v8, :cond_3

    const-string v2, "Invalid payment methods or data."

    invoke-static {p3, v2, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V

    return-object v10

    :cond_3
    if-nez v9, :cond_4

    const-string v2, "Invalid payment details."

    invoke-static {p3, v2, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V

    return-object v10

    :cond_4
    if-nez p6, :cond_5

    const-string v2, "Invalid payment options."

    invoke-static {p3, v2, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V

    return-object v10

    :cond_5
    new-instance v11, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    move-object v0, v11

    move-object v1, p3

    move-object v2, p0

    move-object/from16 v4, p6

    move v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;-><init>(Lorg/chromium/payments/mojom/PaymentRequestClient;Lorg/chromium/content_public/browser/RenderFrameHost;Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/payments/mojom/PaymentOptions;ZLjava/lang/Runnable;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;)V

    move-object v0, p2

    invoke-direct {v11, p2, v8, v9}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->initAndValidate(Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v11}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->close()V

    return-object v10

    :cond_6
    return-object v11

    :cond_7
    :goto_0
    const-string v1, "The frame that initiated payment is not associated with any web page."

    invoke-static {v10, v1, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortBeforeInstantiation(Lorg/chromium/payments/mojom/PaymentRequestClient;Ljava/lang/String;I)V

    return-object v10
.end method

.method public static createPaymentRequest(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;)Lorg/chromium/payments/mojom/PaymentRequest;
    .locals 2

    new-instance v0, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;

    new-instance v1, Lcom/sec/terrace/browser/payments/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/terrace/browser/payments/d;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;)V

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper;-><init>(Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;)V

    return-object v0
.end method

.method private initAndValidate(Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedOrigin()Lorg/chromium/url/Origin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/RenderFrameHost;->getLastCommittedURL()Lorg/chromium/url/GURL;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;->createBrowserPaymentRequest(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    iget-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mDelegate:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->isOriginAllowedToUseWebPaymentApis(Lorg/chromium/url/GURL;)Z

    move-result p1

    const/4 v0, 0x3

    const-string v2, "No UI will be shown. CanMakePayment and hasEnrolledInstrument will always return false. Show will be rejected with NotSupportedError."

    const-string v3, "PaymentRequestServ"

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Only localhost, file://, and cryptographic scheme origins allowed."

    invoke-static {v3, p2, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, p1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    invoke-interface {p0, p2, v0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mDelegate:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

    invoke-interface {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->getInvalidSslCertificateErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, p2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    invoke-interface {p0, p2, p3}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->initAndValidate([Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const-string p1, "The frame that initiated payment is gone."

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->abortForInvalidDataFromRenderer(Ljava/lang/String;)V

    return v1
.end method

.method private static synthetic lambda$createPaymentRequest$0(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, p3

    invoke-static/range {v0 .. v8}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->createIfParamsValid(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    move-result-object v0

    return-object v0
.end method

.method private static redactShippingAddress(Lorg/chromium/payments/mojom/PaymentAddress;)V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/payments/mojom/PaymentAddress;->organization:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/payments/mojom/PaymentAddress;->phone:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/payments/mojom/PaymentAddress;->recipient:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/payments/mojom/PaymentAddress;->addressLine:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->abort()V

    return-void
.end method

.method public abortForInvalidDataFromRenderer(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->disconnectFromClientWithDebugMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public canMakePayment()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->canMakePayment()V

    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mHasClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mHasClosed:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->close()V

    iput-object v1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    iput-object v1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mOnClosedListener:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public closeByRenderer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->close()V

    return-void
.end method

.method public complete(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->complete(I)V

    return-void
.end method

.method public getPaymentOptions()Lorg/chromium/payments/mojom/PaymentOptions;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mPaymentOptions:Lorg/chromium/payments/mojom/PaymentOptions;

    return-object p0
.end method

.method public getPaymentRequestOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mPaymentRequestOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getPaymentRequestSecurityOrigin()Lorg/chromium/url/Origin;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mPaymentRequestSecurityOrigin:Lorg/chromium/url/Origin;

    return-object p0
.end method

.method public getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-object p0
.end method

.method public getTopLevelOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mTopLevelOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public getTwaPackageName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mDelegate:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->getTwaPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public hasEnrolledInstrument()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->hasEnrolledInstrument()V

    return-void
.end method

.method public onAbort(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onAbort(Z)V

    return-void
.end method

.method public onCanMakePayment(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onCanMakePayment(I)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onComplete()V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->close()V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onHasEnrolledInstrument(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onHasEnrolledInstrument(I)V

    return-void
.end method

.method public onPayerDetailChange(Lorg/chromium/payments/mojom/PayerDetail;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onPayerDetailChange(Lorg/chromium/payments/mojom/PayerDetail;)V

    return-void
.end method

.method public onPaymentDetailsNotUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->onPaymentDetailsNotUpdated()V

    return-void
.end method

.method public onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onPaymentMethodChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentResponse(Lorg/chromium/payments/mojom/PaymentResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onPaymentResponse(Lorg/chromium/payments/mojom/PaymentResponse;)V

    return-void
.end method

.method public onShippingAddressChange(Lorg/chromium/payments/mojom/PaymentAddress;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->redactShippingAddress(Lorg/chromium/payments/mojom/PaymentAddress;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onShippingAddressChange(Lorg/chromium/payments/mojom/PaymentAddress;)V

    return-void
.end method

.method public onShippingOptionChange(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lorg/chromium/payments/mojom/PaymentRequestClient;->onShippingOptionChange(Ljava/lang/String;)V

    return-void
.end method

.method public retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->retry(Lorg/chromium/payments/mojom/PaymentValidationErrors;)V

    return-void
.end method

.method public setSkipUiForNonUrlPaymentMethodIdentifiersForTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mSkipUiForNonUrlPaymentMethodIdentifiers:Z

    return-void
.end method

.method public show(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->show(Z)V

    return-void
.end method

.method public updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mBrowserPaymentRequest:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;->updateWith(Lorg/chromium/payments/mojom/PaymentDetails;)V

    return-void
.end method

.method public warnNoFavicon()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->mClient:Lorg/chromium/payments/mojom/PaymentRequestClient;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lorg/chromium/payments/mojom/PaymentRequestClient;->warnNoFavicon()V

    return-void
.end method
