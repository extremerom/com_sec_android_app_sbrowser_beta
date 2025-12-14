.class public Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojom/samsung/payments/SamsungPay;
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# static fields
.field private static final SPAY_PACKAGE_NAME:Ljava/lang/String;

.field private static sSpayIsAvailable:Z


# instance fields
.field private mCanMakePaymentIsPending:Z

.field private final mCanMakePaymentReplyHandler:Landroid/os/Messenger;

.field private mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

.field private final mContext:Landroid/content/Context;

.field private mIsBoundToService:Z

.field private mMakePaymentIsPending:Z

.field private mPendingCanMakePaymentData:Landroid/os/Bundle;

.field private final mWalletInfoConnection:Landroid/content/ServiceConnection;

.field private mWalletInfoService:Landroid/os/Messenger;

.field private final mWindow:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;->getSpayPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->SPAY_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$1;-><init>(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWalletInfoConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl$2;-><init>(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentReplyHandler:Landroid/os/Messenger;

    const-string v0, "TinSamsungPayImpl"

    const-string v1, "activated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getTopLevelNativeWindow()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    return p0
.end method

.method private apiEntrySanityCheck()V
    .locals 1

    sget-boolean v0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->sSpayIsAvailable:Z

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-static {p0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)Lorg/chromium/mojom/samsung/payments/SamsungPayClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    return-void
.end method

.method private static checkAvailability(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus;->getAppStatus()Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/samsungpay/TerraceSPayStatus$AppStatus;->isInstalled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->getWalletInfoIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->getPayIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    sput-boolean p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->sSpayIsAvailable:Z

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;Landroid/os/Messenger;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWalletInfoService:Landroid/os/Messenger;

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->logForCanMakePaymentFail()V

    return-void
.end method

.method private static getPayIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "com.samsung.android.spay.intent.action.PAY"

    invoke-static {v0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->SPAY_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static getWalletInfoIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "com.samsung.android.spay.intent.action.WALLET_ONLINE_SERVICE"

    invoke-static {v0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->SPAY_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->logForCanMakePaymentSuccess()V

    return-void
.end method

.method public static initializeCommandLineFlag(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->checkAvailability(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "TinSamsungPayImpl"

    if-eqz p0, :cond_0

    const-string p0, "SamsungPayAPI enabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object p0

    const-string v0, "enable-blink-features"

    const-string v1, "SamsungPayAPI"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/base/CommandLine;->appendSwitchWithValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "SamsungPayAPI disabled"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->sendCanMakePayment()V

    return-void
.end method

.method private logForCanMakePaymentFail()V
    .locals 2

    const-string p0, "9149"

    const-string v0, "0"

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logForCanMakePaymentSuccess()V
    .locals 2

    const-string p0, "9149"

    const-string v0, "1"

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logForMakePaymentFail()V
    .locals 2

    const-string p0, "9150"

    const-string v0, "0"

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logForMakePaymentSuccess()V
    .locals 2

    const-string p0, "9150"

    const-string v0, "1"

    const-string v1, "201"

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendCanMakePayment()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWalletInfoService:Landroid/os/Messenger;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentReplyHandler:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWalletInfoService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TinSamsungPayImpl"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-interface {p0}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onError()V

    :goto_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    const-string p0, "TinSamsungPayImpl"

    const-string v0, "abort()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canMakePayment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "bindService() failed"

    const-string v1, "canMakePayment()"

    const-string v2, "TinSamsungPayImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->apiEntrySanityCheck()V

    iget-boolean v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->getWalletInfoIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    const-string v5, "origin"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    const-string v4, "data"

    invoke-virtual {p1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->sendCanMakePayment()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWalletInfoConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-interface {p0}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onError()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    iget-boolean v3, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z

    if-nez v3, :cond_4

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-interface {p0}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onError()V

    :cond_4
    throw v1
.end method

.method public close()V
    .locals 4

    const-string v0, "TinSamsungPayImpl"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    iget-boolean v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWalletInfoConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v2, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mIsBoundToService:Z

    :cond_1
    iput-boolean v2, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mCanMakePaymentIsPending:Z

    iput-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mPendingCanMakePaymentData:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mMakePaymentIsPending:Z

    return-void
.end method

.method public makePaymentRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "makePaymentRequest()"

    const-string v1, "TinSamsungPayImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->apiEntrySanityCheck()V

    iget-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mMakePaymentIsPending:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mMakePaymentIsPending:Z

    invoke-static {}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->getPayIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "origin"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p0, p2}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "failed to start pay intent"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mMakePaymentIsPending:Z

    iget-object p0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-interface {p0}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onError()V

    :cond_1
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnectionError() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/mojo/system/MojoException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TinSamsungPayImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->close()V

    return-void
.end method

.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "onIntentCompleted() resultCode: "

    const-string v1, "TinSamsungPayImpl"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mMakePaymentIsPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mMakePaymentIsPending:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const-string p2, "makePaymentRequest() failed with resultCode "

    invoke-static {p1, p2, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-interface {p1}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onError()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->logForMakePaymentFail()V

    return-void

    :cond_2
    const-string p1, "makePaymentRequest() handled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    goto :goto_0

    :cond_3
    const-string p2, "instrumentDetails"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-interface {p2, p1}, Lorg/chromium/mojom/samsung/payments/SamsungPayClient;->onMakePaymentRequestResponse(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->logForMakePaymentSuccess()V

    return-void
.end method

.method public setClient(Lorg/chromium/mojom/samsung/payments/SamsungPayClient;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/samsungpay/TinSamsungPayImpl;->mClient:Lorg/chromium/mojom/samsung/payments/SamsungPayClient;

    return-void
.end method
