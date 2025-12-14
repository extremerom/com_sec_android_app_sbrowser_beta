.class Lcom/sec/android/app/sbrowser/webapp/WebappLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sendLogForLaunching(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isWebApkActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappLogging;->sendLogForWebApkLaunching(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;->id:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappLogging;->sendLogForWebappLaunching(Ljava/lang/String;)V

    return-void
.end method

.method private static sendLogForWebApkLaunching(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_0

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const-string v0, "971"

    const-string v2, "9711"

    invoke-static {v0, v2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1a

    const/16 v2, 0x6591

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static sendLogForWebappLaunching(Ljava/lang/String;)V
    .locals 2

    const-string v0, "970"

    const-string v1, "9701"

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
