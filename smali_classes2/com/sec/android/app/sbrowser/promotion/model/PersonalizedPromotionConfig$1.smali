.class Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/global_config/FetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;->fetchConfigFiles(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;

.field final synthetic val$configKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->val$configKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Landroid/content/Context;I)V
    .locals 0

    const-string p0, "Fetch failed : "

    const-string p1, "PersonalizedPromotionConfig"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFetched(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetched : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->val$configKey:Ljava/lang/String;

    const-string v2, "PersonalizedPromotionConfig"

    invoke-static {v0, v1, v2}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->val$configKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;->a(Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigFeature$FetchResponse;->body:Ljava/io/ByteArrayOutputStream;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->this$0:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig$1;->val$configKey:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;->a(Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/device/FileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
