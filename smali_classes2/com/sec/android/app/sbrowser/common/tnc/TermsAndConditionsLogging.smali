.class public Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;-><init>()V

    return-object v0
.end method

.method private createTaskInfo(ILjava/lang/String;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;
    .locals 1

    new-instance p0, Landroid/os/PersistableBundle;

    invoke-direct {p0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v0, "url"

    invoke-virtual {p0, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;->create()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo$Builder;->build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;->create(ILcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$TerraceOneOffInfo;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setRequiredNetworkType(I)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setIsPersisted(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->setUpdateCurrent(Z)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo$Builder;->build()Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDeviceModel()Ljava/lang/String;
    .locals 0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0
.end method

.method private getExtraParams(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "sv="

    const-string v1, "&ui="

    const-string v2, "&iv="

    invoke-static {v0, p3, v1, p2, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getInternetVersion()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&mo="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getDeviceModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&oc="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getOperatorCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&cc="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&et="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "&ag="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;

    return-object v0
.end method

.method private getInternetVersion()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMarketingAgreementLoggingUrl(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://terms.internet.apps.samsung.com/marketing?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getExtraParams(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOperatorCode()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/SalesCodeUtil;->getSalesCode()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTermsAgreementLoggingUrl(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://terms.internet.apps.samsung.com/agreements?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getExtraParams(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public requestMarketingAgreementLogging(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_0

    const v1, 0x186a3

    goto :goto_0

    :cond_0
    const v1, 0x186a4

    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getMarketingAgreementLoggingUrl(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->createTaskInfo(ILjava/lang/String;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskScheduler;->schedule(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;)Z

    return-void
.end method

.method public requestTermsAgreementLogging(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_0

    const v1, 0x186a1

    goto :goto_0

    :cond_0
    const v1, 0x186a2

    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->getTermsAgreementLoggingUrl(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/tnc/TermsAndConditionsLogging;->createTaskInfo(ILjava/lang/String;)Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/background_task_scheduler/TerraceBackgroundTaskScheduler;->schedule(Landroid/content/Context;Lcom/sec/terrace/browser/background_task_scheduler/TerraceTaskInfo;)Z

    return-void
.end method
