.class Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;


# instance fields
.field final synthetic val$nativeCallback:J


# virtual methods
.method public onFailed()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Fail-DetectionLang"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$1;->val$nativeCallback:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->detectionLangResult(J[Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$1;->val$nativeCallback:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->detectionLangResult(J[Ljava/lang/String;)V

    return-void
.end method
