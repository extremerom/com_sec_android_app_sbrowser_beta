.class Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->fetchBlocklist(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "fetchBlocklist.onFailed : "

    const-string p1, "SixGlobalConfigFetcher"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    const-string v0, "SixGlobalConfigFetcher"

    if-eqz p2, :cond_0

    const-string v1, "fetchBlocklist.onFetched running.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->a(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "fetchBlocklist.onFetched : response is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->isSupportedByConfig(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->setSupportedByConfig(Z)V

    return-void
.end method
