.class public Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sActivator:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;->sActivator:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;->sActivator:Lcom/sec/android/app/sbrowser/scloud/sync/adapters/Activator;

    return-object v0
.end method


# virtual methods
.method public activate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)V
    .locals 9

    const-string p0, "start"

    const-string v0, "Activator"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccount()Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "account not signed in!!!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "activate account info is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activate pushToken : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pushType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;

    invoke-direct {v8}, Lcom/samsung/android/sdk/scloud/client/ApiClient;-><init>()V

    :try_start_0
    iget-object v2, p2, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->userId:Ljava/lang/String;

    iput-object v2, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->uid:Ljava/lang/String;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;->token:Ljava/lang/String;

    iput-object p2, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->accessToken:Ljava/lang/String;

    const-string p2, "fcm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getFCMAppId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->pushAppId:Ljava/lang/String;

    const-string p0, "SMPFCM"

    iput-object p0, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->pushName:Ljava/lang/String;

    iput-object v1, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->pushToken:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_2
    const-string p2, "spp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getInstance()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/smp/SmpController;->getSPPAppId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->pushAppId:Ljava/lang/String;

    const-string p2, "SMPSPP"

    iput-object p2, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->pushName:Ljava/lang/String;

    iput-object p0, v8, Lcom/samsung/android/sdk/scloud/client/ApiClient;->pushToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    :try_start_1
    new-instance p0, Lcom/samsung/android/sdk/scloud/decorator/activate/SamsungCloudActivate;

    const-string v5, "4oe3617251"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GLO"

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/scloud/decorator/activate/SamsungCloudActivate;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scloud/client/ApiClient;)V

    const-string p2, "SamsungCloudActivate.activate!"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scloud/decorator/activate/SamsungCloudActivate;->activate()V

    invoke-static {p1}, Lcom/samsung/android/sdk/scloud/decorator/device/SamsungCloudDevice;->getDvcId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "cloud_device_id"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->updateStringValuePrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/scloud/exception/SamsungCloudException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "activate SamsungCloudException : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scloud/exception/SamsungCloudException;->getType()J

    move-result-wide p1

    const-wide/32 v0, 0x17d7ce40

    cmp-long p1, p1, v0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scloud/exception/SamsungCloudException;->getType()J

    move-result-wide p1

    const-wide/32 v0, 0x17d7ce4a

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_BAD_ACCESS_TOKEN:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p1

    :goto_2
    const-string p1, "activate Exception!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;

    sget-object p2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;->FAIL_AUTHENTICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/SCException;-><init>(Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ResultCode;Ljava/lang/String;)V

    throw p1
.end method
