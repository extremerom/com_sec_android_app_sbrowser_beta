.class public Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;
    }
.end annotation


# instance fields
.field private mEventHandler:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;

    return-void
.end method


# virtual methods
.method public isHomepageNewsFeed()Z
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "NewsJavaScriptAdapter"

    const-string v1, "isHomepageNewsFeed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isDeprecatedUnifiedHomePageDomain(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p0

    return p0
.end method

.method public setHomepageAsNewsFeed()V
    .locals 2
    .annotation runtime Lcom/sec/terrace/browser/JavascriptInterface;
    .end annotation

    const-string v0, "NewsJavaScriptAdapter"

    const-string v1, "setHomepageAsNewsFeed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter;->mEventHandler:Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/news/NewsJavaScriptAdapter$JavaScriptEventHandler;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isDeprecatedUnifiedHomePageDomain(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsNewsFeed()V

    :cond_1
    return-void
.end method
