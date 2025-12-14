.class public Lorg/chromium/components/search_engines/TemplateUrlService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/search_engines/TemplateUrlService$Natives;,
        Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;,
        Lorg/chromium/components/search_engines/TemplateUrlService$TemplateUrlServiceObserver;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLoadListeners:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeTemplateUrlServiceAndroid:J

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/search_engines/TemplateUrlService$TemplateUrlServiceObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    iput-wide p1, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    return-void
.end method

.method private static addTemplateUrlToList(Ljava/util/List;Lorg/chromium/components/search_engines/TemplateUrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/search_engines/TemplateUrl;",
            ">;",
            "Lorg/chromium/components/search_engines/TemplateUrl;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNativePtr()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mNativeTemplateUrlServiceAndroid:J

    return-void
.end method

.method private static create(J)Lorg/chromium/components/search_engines/TemplateUrlService;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/components/search_engines/TemplateUrlService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/search_engines/TemplateUrlService;-><init>(J)V

    return-object v0
.end method

.method private onTemplateURLServiceChanged()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/search_engines/TemplateUrlService$TemplateUrlServiceObserver;

    invoke-interface {v0}, Lorg/chromium/components/search_engines/TemplateUrlService$TemplateUrlServiceObserver;->onTemplateURLServiceChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private templateUrlServiceLoaded()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;

    invoke-interface {v0}, Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;->onTemplateUrlServiceLoaded()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public unregisterLoadListener(Lorg/chromium/components/search_engines/TemplateUrlService$LoadListener;)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/search_engines/TemplateUrlService;->mLoadListeners:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
