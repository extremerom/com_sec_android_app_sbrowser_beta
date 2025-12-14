.class Lcom/sec/android/app/sbrowser/customtabs/ExternalModuleInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/ExternalModuleInitializer;->lambda$onPostInflation$0()V

    return-void
.end method

.method private static synthetic lambda$onPostInflation$0()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    return-void
.end method


# virtual methods
.method public onPostInflation(Landroid/app/Application;)V
    .locals 0

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/q;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "enable-safe-browsing"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/net/KerberosAuthenticator;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorChecker;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/certificate/CertificateErrorObserver;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager;->initialize()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->get()Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->setHttpAuthObserver(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;)V

    return-void
.end method
