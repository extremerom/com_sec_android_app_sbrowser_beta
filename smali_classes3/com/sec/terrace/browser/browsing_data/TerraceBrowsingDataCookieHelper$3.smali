.class Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getCookieSize(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookieSizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$3;->this$0:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$3;->this$0:Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->onGetCookieSize(I)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$3;->onResult(Ljava/lang/Integer;)V

    return-void
.end method
