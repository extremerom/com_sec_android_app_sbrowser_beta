.class Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;
.super Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;
.source "SourceFile"


# static fields
.field private static final SAMSUNG_ACCOUNT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static final sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;-><init>()V

    const-string v1, "samsung-account-%d"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/account/CustomThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->SAMSUNG_ACCOUNT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler$AbstractAccountHandler;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->updateRefresh(Z)V

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$1;-><init>(Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->init(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static bridge synthetic b()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->SAMSUNG_ACCOUNT_THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public static bridge synthetic c()Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    return-object v0
.end method

.method public static bridge synthetic d(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->getInternetErrorCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sendRequest(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getInternetErrorCode(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "AUT_1901"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "AUT_1822"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "AUT_1803"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "AUT_1802"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 p0, -0x4

    return p0

    :pswitch_0
    const/4 p0, -0x8

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7ab90358 -> :sswitch_3
        -0x7ab90357 -> :sswitch_2
        -0x7ab9031a -> :sswitch_1
        -0x7ab8ff98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static sendRequest(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->updateStateProcessing()V

    const-string v1, "Send the request for getting samsung mobile web account token."

    const-string v2, "SamsungMobileWebAccountHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "internet_account_id"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/account/AccountPreferences;->getStringValuePrivate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, -0x8

    if-eqz v1, :cond_0

    const-string p0, "AccountId is empty."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->setError(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/account/AccountDataHelper;->getInternetAccount()Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "InternetAccount is null."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->setError(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->checkForceRefreshAndSet()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "The auth-token was expired. The request to update token will be sent."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler$2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/scloud/account/AccountRequestHelper;->updateSamsungToken(Landroid/content/Context;Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;Lcom/sec/android/app/sbrowser/scloud/account/ISamsungUserTokenListener;)V

    goto :goto_0

    :cond_2
    const-string p0, "Get the Samsung Mobile Web Account in DB."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->userId:Ljava/lang/String;

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authToken:Ljava/lang/String;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->apiServerUrl:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/scloud/account/InternetAccount;->authServerUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    new-instance v7, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->set(Lcom/sec/android/app/sbrowser/scloud/account/SamsungAccountInfo;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->clear()V

    return-void
.end method

.method public clearWithRefresh()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->clear()V

    sget-object p0, Lcom/sec/android/app/sbrowser/scloud/account/SamsungMobileWebAccountHandler;->sAccountHandler:Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/scloud/account/BasicAccountHandler;->updateRefresh(Z)V

    return-void
.end method
