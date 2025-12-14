.class public Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->mClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    return-void
.end method

.method public static synthetic a(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$listPurchases$2(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$getDetails$1(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$listPurchases$3(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$consume$8(Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;Landroid/net/Uri;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$listPurchaseHistory$5(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-void
.end method

.method private execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->mClient:Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;

    new-instance v8, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter$1;-><init>(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v8}, Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient;->connectAndExecute(Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$ExecutionCallback;)V

    return-void
.end method

.method public static synthetic f(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$consume$6(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void
.end method

.method public static synthetic g(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$getDetails$0(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void
.end method

.method public static synthetic h(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$consume$7(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void
.end method

.method public static synthetic i(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->lambda$listPurchaseHistory$4(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-void
.end method

.method private static synthetic lambda$consume$6(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void
.end method

.method private static synthetic lambda$consume$7(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V

    return-void
.end method

.method private synthetic lambda$consume$8(Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;Landroid/net/Uri;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 7

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinAcknowledgeConverter;->convertParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinAcknowledgeConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)LI/d;

    move-result-object v4

    const-string v2, "acknowledge"

    move-object v0, p0

    move-object v1, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$getDetails$0(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void
.end method

.method private static synthetic lambda$getDetails$1(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V

    return-void
.end method

.method private static synthetic lambda$listPurchaseHistory$4(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchaseHistoryConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-void
.end method

.method private static synthetic lambda$listPurchaseHistory$5(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchaseHistoryConverter;->returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V

    return-void
.end method

.method private static synthetic lambda$listPurchases$2(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchasesConverter;->returnClientAppError(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-void
.end method

.method private static synthetic lambda$listPurchases$3(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchasesConverter;->returnClientAppUnavailable(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V

    return-void
.end method


# virtual methods
.method public consume(Landroid/net/Uri;Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)V
    .locals 11

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->convertParams(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-static {p3}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinConsumeConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;)LI/d;

    move-result-object v8

    new-instance v9, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

    const/4 v0, 0x0

    invoke-direct {v9, p3, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;I)V

    new-instance v5, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;

    const/4 v0, 0x1

    invoke-direct {v5, p3, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/b;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;I)V

    new-instance v10, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/browserservices/digitalgoods/c;-><init>(Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$Consume_Response;Landroid/net/Uri;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;Lcom/sec/terrace/browser/browserservices/digitalgoods/b;)V

    const-string v2, "consume"

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDetails(Landroid/net/Uri;[Ljava/lang/String;Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)V
    .locals 7

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->convertParams([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p3}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinGetDetailsConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;)LI/d;

    move-result-object v4

    new-instance v5, Lcom/sec/terrace/browser/browserservices/digitalgoods/a;

    const/4 p2, 0x0

    invoke-direct {v5, p3, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/a;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;I)V

    new-instance v6, Lcom/sec/terrace/browser/browserservices/digitalgoods/a;

    const/4 p2, 0x1

    invoke-direct {v6, p3, p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/a;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$GetDetails_Response;I)V

    const-string v2, "getDetails"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public listPurchaseHistory(Landroid/net/Uri;Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)V
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchaseHistoryConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;)LI/d;

    move-result-object v4

    new-instance v5, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;

    const/4 v0, 0x0

    invoke-direct {v5, p2, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;I)V

    new-instance v6, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;

    const/4 v0, 0x1

    invoke-direct {v6, p2, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/e;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchaseHistory_Response;I)V

    const-string v2, "listPurchaseHistory"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public listPurchases(Landroid/net/Uri;Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)V
    .locals 7

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinListPurchasesConverter;->convertCallback(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;)LI/d;

    move-result-object v4

    new-instance v5, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;

    const/4 v0, 0x0

    invoke-direct {v5, p2, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;I)V

    new-instance v6, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;

    const/4 v0, 0x1

    invoke-direct {v6, p2, v0}, Lcom/sec/terrace/browser/browserservices/digitalgoods/d;-><init>(Lorg/chromium/payments/mojom/DigitalGoods$ListPurchases_Response;I)V

    const-string v2, "listPurchases"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/browserservices/digitalgoods/TinDigitalGoodsAdapter;->execute(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;LI/d;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
