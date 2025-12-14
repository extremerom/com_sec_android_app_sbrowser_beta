.class public Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LazyHolder;,
        Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;,
        Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LoadListener;,
        Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$TemplateUrlServiceObserver;
    }
.end annotation


# instance fields
.field private final mLoadListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeTemplateUrlServiceAndroid:J

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$TemplateUrlServiceObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->init(Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;-><init>()V

    return-void
.end method

.method public static createForTesting()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    invoke-direct {v0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TerraceTemplateUrlService"

    const-string v1, "TerraceHelper not initialized! so return null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LazyHolder;->a()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;

    move-result-object v0

    return-object v0
.end method

.method private onTemplateURLServiceChanged()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$TemplateUrlServiceObserver;

    invoke-interface {v0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$TemplateUrlServiceObserver;->onTemplateURLServiceChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private templateUrlServiceLoaded()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LoadListener;

    invoke-interface {v0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LoadListener;->onTemplateUrlServiceLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultProviderKeyword()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->getDefaultProviderKeyword(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultProviderSearchUrl()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->getDefaultProviderSearchUrl(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultProviderShortName()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->getDefaultProviderShortName(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlForSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->getUrlForSearchQuery(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUrlForVoiceSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->getUrlForVoiceSearchQuery(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLoaded()Z
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->isLoaded(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)Z

    move-result p0

    return p0
.end method

.method public load()V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->load(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;)V

    return-void
.end method

.method public registerLoadListener(Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LoadListener;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSearchEngine(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlServiceJni;->get()Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$Natives;->setSearchEngine(JLcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;Ljava/util/HashMap;)V

    return-void
.end method

.method public unregisterLoadListener(Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService$LoadListener;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lcom/sec/terrace/browser/search_engines/TerraceTemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
