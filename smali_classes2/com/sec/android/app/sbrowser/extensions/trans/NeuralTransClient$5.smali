.class Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->createTrans(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

.field final synthetic val$nativeCallback:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->h(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Success"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->g(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->i(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->createTransResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public onFailed()V
    .locals 4

    const-string v0, "NeuralTransClient"

    const-string v1, "createTrans onFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Fail-Create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->val$nativeCallback:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->createTransResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public onFailedAuthTokenExpired()V
    .locals 4

    const-string v0, "NeuralTransClient"

    const-string v1, "createTrans onFailedAuthTokenExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Fail-Create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Fail-AuthToken"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;->val$nativeCallback:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->createTransResult(J[Ljava/lang/String;)V

    return-void
.end method
