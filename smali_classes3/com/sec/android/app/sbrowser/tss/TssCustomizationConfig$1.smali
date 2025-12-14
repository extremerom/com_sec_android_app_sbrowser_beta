.class Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->onFeatureConfigUpdated(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig$1;->this$0:Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "onFeatureConfigUpdated: onFailed "

    const-string p1, "TssCustomizationConfig"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 2

    const-string v0, "TssCustomizationConfig"

    const-string v1, "onFeatureConfigUpdated : onFetched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTss2Activated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Tss2Customer.xml"

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig$1;->this$0:Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->b(Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig$1;->this$0:Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;->c(Lcom/sec/android/app/sbrowser/tss/TssCustomizationConfig;Landroid/content/Context;)V

    return-void
.end method
