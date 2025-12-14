.class interface abstract Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract flushCookieStore(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCacheSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCookies(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Ljava/lang/String;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;",
            "Ljava/lang/String;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCookiesCount(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCookiesSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;Lorg/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
