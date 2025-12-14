.class public final synthetic Lcom/sec/terrace/browser/browserservices/digitalgoods/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

.field public final synthetic f:Lcom/sec/terrace/browser/browserservices/digitalgoods/b;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->a:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->c:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    iput-object p4, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->d:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->e:Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

    iput-object p6, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->f:Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->e:Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

    iget-object v5, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->f:Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

    iget-object v2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->c:Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;

    iget-object v3, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->d:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->a:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->d(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;)V

    return-void
.end method
