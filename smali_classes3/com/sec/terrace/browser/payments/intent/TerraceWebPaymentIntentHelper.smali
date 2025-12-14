.class public Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;,
        Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;
    }
.end annotation


# direct methods
.method public static synthetic a(Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper;->lambda$parsePaymentResponse$0(Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/payments/PayerData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper;->lambda$parsePaymentResponse$1(Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/payments/PayerData;)V

    return-void
.end method

.method public static createIsReadyToPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;)Landroid/content/Intent;
    .locals 8
    .param p4    # [[B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p5}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentMethodDataMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelper;->createIsReadyToPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;ZZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static createPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;Ljava/util/List;Ljava/util/Map;)Landroid/content/Intent;
    .locals 14
    .param p6    # [[B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static/range {p7 .. p7}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentMethodDataMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentItem(Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;

    move-result-object v8

    invoke-static/range {p9 .. p9}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-static/range {p10 .. p10}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentDetailsModifierMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v13}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelper;->createPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentItem;Ljava/util/List;Ljava/util/Map;Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;Ljava/util/List;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$parsePaymentResponse$0(Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;->onPaymentError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$parsePaymentResponse$1(Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/payments/PayerData;)V
    .locals 0

    invoke-static {p3}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromPayerData(Lorg/chromium/components/payments/PayerData;)Lcom/sec/terrace/browser/payments/TerracePayerData;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V

    return-void
.end method

.method public static parsePaymentResponse(ILandroid/content/Intent;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;)V
    .locals 2

    invoke-static {p2}, Lcom/sec/terrace/browser/payments/intent/TinWebPaymentIntentHelperTypeConverter;->fromMojoPaymentOptions(Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;)Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;

    move-result-object p2

    new-instance v0, LAa/a;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p3}, LAa/a;-><init>(ILjava/lang/Object;)V

    new-instance p3, LAa/a;

    const/16 v1, 0xd

    invoke-direct {p3, v1, p4}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, p1, p2, v0, p3}, Lorg/chromium/components/payments/intent/WebPaymentIntentHelper;->parsePaymentResponse(ILandroid/content/Intent;Lorg/chromium/components/payments/intent/WebPaymentIntentHelperType$PaymentOptions;Lorg/chromium/components/payments/intent/WebPaymentIntentHelper$PaymentErrorCallback;Lorg/chromium/components/payments/intent/WebPaymentIntentHelper$PaymentSuccessCallback;)V

    return-void
.end method
