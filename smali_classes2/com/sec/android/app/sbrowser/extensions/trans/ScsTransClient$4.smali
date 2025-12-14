.class Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

.field final synthetic val$nativeCallback:J


# direct methods
.method private commonFailureStep()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Fail-GetLangList"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4;->val$nativeCallback:J

    const-string p0, "NONE"

    invoke-virtual {v1, v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(JLjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;->b(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient;)Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->getConfig(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public onFailed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4;->commonFailureStep()V

    return-void
.end method

.method public onFailedAuthTokenExpired()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/ScsTransClient$4;->commonFailureStep()V

    return-void
.end method
