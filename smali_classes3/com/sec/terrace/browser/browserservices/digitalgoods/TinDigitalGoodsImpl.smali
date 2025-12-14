.class public Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/DigitalGoods;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

.field private final mDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    iput-object p2, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public consume(Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->consume(Landroid/net/Uri;Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    :cond_0
    return-void
.end method

.method public getDetails([Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->getDetails(Landroid/net/Uri;[Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    :cond_0
    return-void
.end method

.method public listPurchaseHistory(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->listPurchaseHistory(Landroid/net/Uri;Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    :cond_0
    return-void
.end method

.method public listPurchases(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    invoke-virtual {v0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->listPurchases(Landroid/net/Uri;Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    :cond_0
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method
