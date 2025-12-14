.class public Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    return-void
.end method

.method private sendBroadcastWithHomepage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getDefaultHomePage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p2, "homepage"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** onReceive : URL  is received.."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomepageSettingReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.action.OMADM_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.samsung.intent.action.CHAMELEON_BROWSER_SET_HOMEPAGE"

    const-string v5, "com.samsung.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    const-string v6, "com.samsung.intent.action.OMADM_BROWSER_SET_HOMEPAGE_PROTECTED"

    const/4 v7, 0x1

    if-nez v3, :cond_6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.intent.action.OMADM_BROWSER_GET_HOMEPAGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "com.ws.dm"

    const-string v0, "com.samsung.intent.action.OMADM_BROWSER_HOMEPAGE"

    invoke-direct {p0, p1, v0, v7, p2}, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->sendBroadcastWithHomepage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p2, "com.samsung.sdm"

    invoke-direct {p0, p1, v0, v7, p2}, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->sendBroadcastWithHomepage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string p2, "com.samsung.intent.action.STK_BROWSER_GET_HOMEPAGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const-string p2, "com.samsung.intent.action.STK_BROWSER_HOMEPAGE"

    const-string v0, "com.android.stk"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->sendBroadcastWithHomepage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string p2, "com.samsung.intent.action.STK_BROWSER_GET_HOMEPAGE2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "com.samsung.intent.action.STK_BROWSER_HOMEPAGE2"

    const-string v0, "com.android.stk2"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->sendBroadcastWithHomepage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "com.samsung.intent.action.RETAIL_SET_HOMEPAGE_AS_QUICKACCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    goto :goto_1

    :cond_5
    const-string p0, " ** onReceive : Wrong intents are received.."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p0, "onReceive : OMA-DM-set-homepage is blocked by PM request"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    const-string v1, "homepage"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    if-ge v1, v3, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageByChameleon(Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->mHomePageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setFactoryResetHomeUrl(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    const-string p2, "android.intent.action.CSC_BROWSER_HOMEPAGE"

    const-string v0, "com.samsung.sec.android.application.csc"

    invoke-direct {p0, p1, p2, v7, v0}, Lcom/sec/android/app/sbrowser/homepage/HomepageSettingReceiver;->sendBroadcastWithHomepage(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_b
    :goto_1
    return-void

    :cond_c
    :goto_2
    const-string p0, " ** onReceive : received URL is Empty or too short!!!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
