.class Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->identifyLanguageAndGetCandidate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
        "Ljava/util/List<",
        "Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/scs/base/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;->onFailed()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;

    iget-object v2, v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/DetectionCandidate;->b:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.3f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;->onSuccess(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;->onFailed()V

    :goto_1
    return-void
.end method
