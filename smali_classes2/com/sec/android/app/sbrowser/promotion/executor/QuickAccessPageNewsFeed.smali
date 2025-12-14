.class Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed;
.super Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed$1;-><init>(Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->setViewAdapter(Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;)V

    return-void
.end method

.method private openHomePage()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.android.browser.application_id"

    const-string v3, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "QuickAccessPageNewsFeed"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->t(Ljava/lang/RuntimeException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public feedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->feedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed$2;->$SwitchMap$com$sec$android$app$sbrowser$promotion$executor$IFeedbackInterface$Result:[I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;->getResult()Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsNewsFeed()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/QuickAccessPageNewsFeed;->openHomePage()V

    :goto_0
    return-void
.end method

.method public getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->NEWS:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "quick_access_page_news_feed"

    return-object p0
.end method

.method public precondition(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
