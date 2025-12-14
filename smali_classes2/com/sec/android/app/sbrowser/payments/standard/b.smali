.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;
.implements Lcom/sec/android/app/sbrowser/payments/standard/PaymentTabManagerEventListener$TabManagerCallback;
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/b;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIsReadyToPayResponse(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;->a(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentAppFinder;Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V

    return-void
.end method

.method public onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient;->c(Lcom/sec/android/app/sbrowser/payments/standard/PaymentWithAuthClient$AuthCallback;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method public onTabChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/b;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->e(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V

    return-void
.end method
