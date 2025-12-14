.class Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->updateConfig(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;->this$0:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;->lambda$onFetched$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V

    return-void
.end method

.method private synthetic lambda$onFetched$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;->this$0:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->updateData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p1, "WebDarkCustomConfig"

    const-string p2, "onFailed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;->this$0:Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig;->clearData()V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    const-string v0, "WebDarkCustomConfig"

    const-string v1, "onFetched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/web_dark_custom/a;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_dark_custom/a;-><init>(Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomConfig$1;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
