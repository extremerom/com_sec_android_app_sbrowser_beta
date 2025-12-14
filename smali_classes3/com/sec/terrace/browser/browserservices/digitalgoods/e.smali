.class public final synthetic Lcom/sec/terrace/browser/browserservices/digitalgoods/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;I)V
    .locals 0

    iput p2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;->a:I

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;->b:Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;->a:I

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;->b:Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->e(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->i(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
