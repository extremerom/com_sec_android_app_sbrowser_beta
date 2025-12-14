.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->requestSummarize(JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
        "appInfoWrapper",
        "Ldb/r;",
        "onCreated",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V",
        "onFailed",
        "()V",
        "onFailedAuthTokenExpired",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

.field final synthetic $extraPrompt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestCode:J

.field final synthetic $summarizeLevel:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field final synthetic $text:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;",
            "J",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$requestCode:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$text:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$summarizeLevel:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$extraPrompt:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V
    .locals 9

    const-string v0, "appInfoWrapper"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$requestCode:J

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$text:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$summarizeLevel:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$extraPrompt:Ljava/util/HashMap;

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->onAppInfoCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    return-void
.end method

.method public onFailed()V
    .locals 4

    const-string v0, "CloudSummarizerClient"

    const-string v1, "failed to create AppInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public onFailedAuthTokenExpired()V
    .locals 2

    const-string v0, "CloudSummarizerClient"

    const-string v1, "onFailedAuthTokenExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onAuthTokenExpiredFailure()V

    return-void
.end method
