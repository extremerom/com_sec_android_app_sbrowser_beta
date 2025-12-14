.class public final synthetic Lcom/sec/terrace/browser/browserservices/digitalgoods/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;I)V
    .locals 0

    iput p2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;->a:I

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;->b:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;->a:I

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;->b:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->h(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->f(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
