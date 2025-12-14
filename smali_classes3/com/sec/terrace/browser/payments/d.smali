.class public final synthetic Lcom/sec/terrace/browser/payments/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TinMojoPaymentRequestGateKeeper$ComponentPaymentRequestImplCreator;


# instance fields
.field public final synthetic a:Lorg/chromium/content_public/browser/RenderFrameHost;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;

.field public final synthetic d:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/d;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    iput-boolean p2, p0, Lcom/sec/terrace/browser/payments/d;->b:Z

    iput-object p4, p0, Lcom/sec/terrace/browser/payments/d;->c:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;

    iput-object p3, p0, Lcom/sec/terrace/browser/payments/d;->d:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

    return-void
.end method


# virtual methods
.method public final createComponentPaymentRequestImplIfParamsValid(Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/payments/d;->a:Lorg/chromium/content_public/browser/RenderFrameHost;

    iget-boolean v1, p0, Lcom/sec/terrace/browser/payments/d;->b:Z

    iget-object v2, p0, Lcom/sec/terrace/browser/payments/d;->c:Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;

    iget-object v3, p0, Lcom/sec/terrace/browser/payments/d;->d:Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/terrace/browser/payments/TinPaymentRequestService;->a(Lorg/chromium/content_public/browser/RenderFrameHost;ZLcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;Lcom/sec/terrace/browser/payments/TinPaymentRequestService$Delegate;Lorg/chromium/payments/mojom/PaymentRequestClient;[Lorg/chromium/payments/mojom/PaymentMethodData;Lorg/chromium/payments/mojom/PaymentDetails;Lorg/chromium/payments/mojom/PaymentOptions;Ljava/lang/Runnable;)Lcom/sec/terrace/browser/payments/TinPaymentRequestService;

    move-result-object p0

    return-object p0
.end method
