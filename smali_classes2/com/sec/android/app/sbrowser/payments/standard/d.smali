.class public final synthetic Lcom/sec/android/app/sbrowser/payments/standard/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/d;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/d;->b:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;->a(Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$AbortCallback;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->j(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;->b(Lcom/sec/android/app/sbrowser/payments/standard/PaymentRequestImpl;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
