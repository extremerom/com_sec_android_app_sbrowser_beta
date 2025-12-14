.class Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->fetchFirstPartyList(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "fetchFirstPartyList.onFailed : "

    const-string p1, "SixGlobalConfigFetcher"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "SixGlobalConfigFetcher"

    const-string p1, "fetchFirstPartyList.onFetched - response is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher$3;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;->b(Lcom/sec/android/app/sbrowser/extensions/SixGlobalConfigFetcher;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
