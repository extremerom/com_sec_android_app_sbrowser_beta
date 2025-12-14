.class Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig;->updateBackgroundPlayCustom(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig$1;->this$0:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureConfig$1;->lambda$onFetched$0(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$onFetched$0(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "background_play_custom_data"

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->setBackgroundPlayCustomDataTime(J)V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "Fetch : none "

    const-string p1, "MediaFeatureConfig"

    invoke-static {p2, p0, p1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 1

    const-string p0, "MediaFeatureConfig"

    const-string v0, "Fetch : onFetched"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/b;

    invoke-direct {v0, p2, p1}, Lcom/sec/android/app/sbrowser/media/common/b;-><init>(Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
