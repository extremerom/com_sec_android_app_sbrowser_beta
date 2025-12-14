.class public Lorg/chromium/components/search_engines/NoOpSearchEngineCountryDelegate;
.super Lorg/chromium/components/search_engines/SearchEngineCountryDelegate;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public getDeviceCountry()Lorg/chromium/base/Promise;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Promise<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/base/LocaleUtils;->getDefaultCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/Promise;->fulfilled(Ljava/lang/Object;)Lorg/chromium/base/Promise;

    move-result-object p0

    return-object p0
.end method
