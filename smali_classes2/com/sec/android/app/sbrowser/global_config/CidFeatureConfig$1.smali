.class Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig;->onFeatureConfigUpdated(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig$1;->this$0:Lcom/sec/android/app/sbrowser/global_config/CidFeatureConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "Fetch Json failed "

    const-string p1, "CIDFeatureConfig"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 1

    const-string p0, "CIDFeatureConfig"

    const-string v0, "fetched cidRules"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->applyNewRSARules(Landroid/content/Context;Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
