.class Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/scs/base/tasks/Task;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$2;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;->onFailed()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$2;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$2;->val$callback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;->onFailed()V

    :goto_0
    return-void
.end method
