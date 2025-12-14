.class public Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/payments/mojom/DigitalGoodsFactory;


# static fields
.field private static sImplForTesting:Lorg/chromium/payments/mojom/DigitalGoods;


# instance fields
.field private final mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

.field private final mDigitalGoodsDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

.field private final mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->mDigitalGoodsDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    new-instance p1, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    invoke-static {}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->get()Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;-><init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    return-void
.end method

.method private getResponseCode(Ljava/lang/String;)I
    .locals 2

    const-string v0, "AppStoreBilling"

    invoke-static {v0}, Lorg/chromium/components/payments/PaymentFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->mRenderFrameHost:Lorg/chromium/content_public/browser/RenderFrameHost;

    invoke-static {p0}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinActivityUtils;->getActivityFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;->isInTwaMode()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const-string p0, "https://play.google.com/billing"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static setDigitalGoodsForTesting(Lorg/chromium/payments/mojom/DigitalGoods;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->sImplForTesting:Lorg/chromium/payments/mojom/DigitalGoods;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public createDigitalGoods(Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoodsFactory$CreateDigitalGoods_Response;)V
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->sImplForTesting:Lorg/chromium/payments/mojom/DigitalGoods;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p2, p0, v0}, Lorg/chromium/payments/mojom/DigitalGoodsFactory$CreateDigitalGoods_Response;->call(ILorg/chromium/payments/mojom/DigitalGoods;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->getResponseCode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/chromium/payments/mojom/CreateDigitalGoodsResponseCode;->validate(I)V

    if-nez p1, :cond_1

    new-instance v0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->mAdapter:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsFactoryImpl;->mDigitalGoodsDelegate:Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;

    invoke-direct {v0, v1, p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl;-><init>(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsImpl$Delegate;)V

    invoke-interface {p2, p1, v0}, Lorg/chromium/payments/mojom/DigitalGoodsFactory$CreateDigitalGoods_Response;->call(ILorg/chromium/payments/mojom/DigitalGoods;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-interface {p2, p1, p0}, Lorg/chromium/payments/mojom/DigitalGoodsFactory$CreateDigitalGoods_Response;->call(ILorg/chromium/payments/mojom/DigitalGoods;)V

    :goto_0
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method
