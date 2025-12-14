.class public Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics$VerificationResult;,
        Lcom/sec/terrace/browser/customtabs/TinBrowserServicesMetrics$TimingMetric;
    }
.end annotation


# direct methods
.method public static recordVerificationResult(I)V
    .locals 2

    const-string v0, "BrowserServices.VerificationResult"

    const/4 v1, 0x7

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method
