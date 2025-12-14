.class public Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/service_manager/InterfaceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/services/service_manager/InterfaceFactory<",
        "Lorg/chromium/payments/mojom/PaymentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->lambda$createImpl$0(Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$createImpl$0(Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;

    invoke-direct {v0, p1, p0}, Lcom/sec/terrace/browser/payments/TinBridgePaymentRequestService;-><init>(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->createImpl()Lorg/chromium/payments/mojom/PaymentRequest;

    move-result-object p0

    return-object p0
.end method

.method public createImpl()Lorg/chromium/payments/mojom/PaymentRequest;
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    if-nez v0, :cond_0

    new-instance p0, Lorg/chromium/components/payments/InvalidPaymentRequest;

    invoke-direct {p0}, Lorg/chromium/components/payments/InvalidPaymentRequest;-><init>()V

    return-object p0

    :cond_0
    new-instance v1, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;

    invoke-direct {v1, v0}, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {v0}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-interface {v1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;->skipUiForBasicCard()Z

    move-result v0

    new-instance v2, Lcom/sec/terrace/browser/payments/c;

    invoke-direct {v2, v1}, Lcom/sec/terrace/browser/payments/c;-><init>(Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;)V

    invoke-static {p0, v0, v1, v2}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->createPaymentRequest(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;)Lorg/chromium/payments/mojom/PaymentRequest;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lorg/chromium/components/payments/InvalidPaymentRequest;

    invoke-direct {p0}, Lorg/chromium/components/payments/InvalidPaymentRequest;-><init>()V

    return-object p0
.end method
