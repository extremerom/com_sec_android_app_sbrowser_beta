.class Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getCookiesForUrl(Ljava/lang/String;Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$1;->this$0:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$1;->this$0:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->onGetCookiesForUrl(Ljava/lang/String;)V

    return-void
.end method
