.class public Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;,
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;,
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;,
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;,
        Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;
    }
.end annotation


# static fields
.field private static sCookieHelper:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;


# instance fields
.field private mCacheSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;

.field private mCookieCountListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;

.field private mCookieSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;

.field private mCookiesForUrlListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->sCookieHelper:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->sCookieHelper:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->sCookieHelper:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    return-object v0
.end method


# virtual methods
.method public flushCookieStore()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelperJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$5;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$5;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V

    invoke-interface {v0, p0, v1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;->flushCookieStore(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V

    return-void
.end method

.method public getCacheSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCacheSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCacheSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelperJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$4;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V

    invoke-interface {p1, p0, v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;->getCacheSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V

    :cond_0
    return-void
.end method

.method public getCookieCount(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieCountListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieCountListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelperJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$2;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V

    invoke-interface {p1, p0, v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;->getCookiesCount(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V

    :cond_0
    return-void
.end method

.method public getCookieSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelperJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;

    move-result-object p1

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$3;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V

    invoke-interface {p1, p0, v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;->getCookiesSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V

    :cond_0
    return-void
.end method

.method public getCookiesForUrl(Ljava/lang/String;Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookiesForUrlListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p2, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookiesForUrlListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelperJni;->get()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;

    move-result-object p2

    new-instance v0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$1;-><init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V

    invoke-interface {p2, p0, p1, v0}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;->getCookies(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Ljava/lang/String;Lorg/chromium/base/Callback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onCookieStoreFlushed(Z)V
    .locals 0

    return-void
.end method

.method public onGetCacheSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCacheSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;->onGetCacheSize(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCacheSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CacheSizeListener;

    :cond_0
    return-void
.end method

.method public onGetCookieCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieCountListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;->onGetCookieCount(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieCountListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieCountListener;

    :cond_0
    return-void
.end method

.method public onGetCookieSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;->onGetCookieSize(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookieSizeListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;

    :cond_0
    return-void
.end method

.method public onGetCookiesForUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookiesForUrlListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;->onGetCookiesForUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->mCookiesForUrlListener:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;

    :cond_0
    return-void
.end method
