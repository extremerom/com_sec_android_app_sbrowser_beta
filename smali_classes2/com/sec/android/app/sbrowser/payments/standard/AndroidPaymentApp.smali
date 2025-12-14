.class public Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;
.super Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;
.implements Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;
    }
.end annotation


# instance fields
.field private mBypassIsReadyToPayServiceInTest:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInstrumentDetailsCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

.field private mIsPreferred:Z

.field private mIsReadyToPayCallback:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;

.field private mIsReadyToPayServiceHelper:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;

.field private final mIsReadyToPayServiceName:Ljava/lang/String;

.field private final mMethodNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mPayActivityName:Ljava/lang/String;

.field private final mTerraceWindowAndroid:Lcom/sec/terrace/TerraceWindowAndroid;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p7, 0x0

    invoke-direct {p0, p2, p5, p7, p6}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mHandler:Landroid/os/Handler;

    new-instance p5, Lcom/sec/terrace/TerraceWindowAndroid;

    invoke-direct {p5, p1, p0}, Lcom/sec/terrace/TerraceWindowAndroid;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;)V

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mTerraceWindowAndroid:Lcom/sec/terrace/TerraceWindowAndroid;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mPayActivityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsReadyToPayServiceName:Ljava/lang/String;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mMethodNames:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsPreferred:Z

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->lambda$respondToIsReadyToPayQuery$0(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->notifyErrorInvokingPaymentApp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->lambda$notifyErrorInvokingPaymentApp$1(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$notifyErrorInvokingPaymentApp$1(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mInstrumentDetailsCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;->onInstrumentDetailsError(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mInstrumentDetailsCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    return-void
.end method

.method private synthetic lambda$respondToIsReadyToPayQuery$0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsReadyToPayCallback:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;->onIsReadyToPayResponse(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsReadyToPayCallback:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;

    :cond_0
    return-void
.end method

.method private notifyErrorInvokingPaymentApp(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onPaymentSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mInstrumentDetailsCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;->onInstrumentDetailsReady(Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/payments/TerracePayerData;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mInstrumentDetailsCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    return-void
.end method

.method private static removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private respondToIsReadyToPayQuery(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/K;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addMethodName(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mMethodNames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bypassIsReadyToPayServiceInTest()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mBypassIsReadyToPayServiceInTest:Z

    return-void
.end method

.method public dismissInstrument()V
    .locals 0

    return-void
.end method

.method public getInstrumentMethodNames()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mMethodNames:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPaymentAppType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public invokePaymentApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;Ljava/util/List;Ljava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;Ljava/util/List;Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;)V
    .locals 12
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
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentShippingOption;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mInstrumentDetailsCallback:Lcom/sec/android/app/sbrowser/payments/standard/PaymentApp$InstrumentDetailsCallback;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mPayActivityName:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper;->createPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/terrace/services/payments/mojom/TerracePaymentItem;Ljava/util/List;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mTerraceWindowAndroid:Lcom/sec/terrace/TerraceWindowAndroid;

    invoke-virtual {v2, v1}, Lcom/sec/terrace/TerraceWindowAndroid;->showIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AndroidPaymentApp"

    const-string v2, "Cannot show intent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Unable to find Chrome activity."

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->notifyErrorInvokingPaymentApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isPreferred()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsPreferred:Z

    return p0
.end method

.method public maybeQueryIsReadyToPayService(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;)V
    .locals 6
    .param p4    # [[B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentMethodData;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/terrace/services/payments/mojom/TerracePaymentDetailsModifier;",
            ">;",
            "Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsReadyToPayCallback:Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp$IsReadyToPayCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsReadyToPayServiceName:Ljava/lang/String;

    const/4 p5, 0x1

    if-nez v1, :cond_0

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->respondToIsReadyToPayQuery(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mPackageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->removeUrlScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper;->createIsReadyToPayIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[BLjava/util/Map;)Landroid/content/Intent;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mBypassIsReadyToPayServiceInTest:Z

    if-eqz p2, :cond_1

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->respondToIsReadyToPayQuery(Z)V

    return-void

    :cond_1
    new-instance p2, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1, p0}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper$TerraceResultHandler;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsReadyToPayServiceHelper:Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/payments/TerraceIsReadyToPayServiceHelper;->query()V

    return-void
.end method

.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mTerraceWindowAndroid:Lcom/sec/terrace/TerraceWindowAndroid;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceWindowAndroid;->removeIntentCallback()Z

    new-instance v0, Lcom/sec/android/app/sbrowser/payments/standard/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/payments/standard/a;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/payments/standard/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/payments/standard/a;-><init>(Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;)V

    const/4 p0, 0x0

    invoke-static {p1, p2, p0, v0, v1}, Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper;->parsePaymentResponse(ILandroid/content/Intent;Lcom/sec/terrace/services/payments/mojom/TerracePaymentOptions;Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentErrorCallback;Lcom/sec/terrace/browser/payments/intent/TerraceWebPaymentIntentHelper$PaymentSuccessCallback;)V

    return-void
.end method

.method public onIsReadyToPayServiceError()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->respondToIsReadyToPayQuery(Z)V

    return-void
.end method

.method public onIsReadyToPayServiceResponse(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->respondToIsReadyToPayQuery(Z)V

    return-void
.end method

.method public setIsPreferred(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AndroidPaymentApp;->mIsPreferred:Z

    return-void
.end method
