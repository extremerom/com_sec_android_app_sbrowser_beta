.class public final synthetic Lcom/sec/terrace/browser/payments/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest$Factory;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/c;->a:Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;

    return-void
.end method


# virtual methods
.method public final createBrowserPaymentRequest(Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/payments/c;->a:Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory;->a(Lcom/sec/terrace/browser/payments/TinPaymentRequestFactory$PaymentRequestDelegateImpl;Lcom/sec/terrace/browser/payments/TinPaymentRequestService;)Lcom/sec/terrace/browser/payments/TinBrowserPaymentRequest;

    move-result-object p0

    return-object p0
.end method
