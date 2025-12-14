.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;
.implements Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/a;->a:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaymentError(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/a;->a:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->d(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Ljava/lang/String;)V

    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/a;->a:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->b(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V

    return-void
.end method
