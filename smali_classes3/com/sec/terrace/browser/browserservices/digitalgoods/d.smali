.class public final synthetic Lcom/sec/terrace/browser/browserservices/digitalgoods/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;I)V
    .locals 0

    iput p2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;->a:I

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;->b:Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;->a:I

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;->b:Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->c(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->a(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
