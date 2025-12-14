.class Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->fetchBoardingPassData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    sget-object v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    iput-object v0, p1, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    const-string p1, "Fetch file failed "

    const-string v0, "BoardingPassConfigManager"

    invoke-static {p2, p1, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->processConfigUpdate()V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    sget-object v1, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$ConfigFetchState;

    const-string v0, "BoardingPassConfigManager"

    const-string v1, "GC boarding pass data fetch success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->a(Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;Landroid/content/Context;)V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "boarding_pass_data.json"

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager$1;->this$0:Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/barcode_detect/BoardingPassConfigManager;->processConfigUpdate()V

    return-void
.end method
