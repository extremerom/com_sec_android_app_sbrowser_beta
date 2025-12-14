.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->onChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

.field final synthetic val$requestCode:J

.field final synthetic val$successDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$successDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$requestCode:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p3

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->lambda$onCreated$0(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->lambda$onCreated$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method

.method public static synthetic c(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-wide v4, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->lambda$onCreated$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method

.method private synthetic lambda$onCreated$0(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->getTargetText()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setDocumentTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    add-int/2addr p2, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_2
    invoke-interface {p1, v1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, p2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "translation successful : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SummarizeBeforeTranslateObserver"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p1, p2, v0, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    return-void

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$onCreated$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 10

    move-object v4, p0

    iget-object v0, v4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;

    move-object v0, v9

    move-wide v1, p4

    move-object/from16 v3, p6

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;-><init>(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreated$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translation failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->code()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SummarizeBeforeTranslateObserver"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V
    .locals 13
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->e(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$successDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iget-wide v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$requestCode:J

    new-instance v12, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;

    move-object v1, v12

    move-object v2, p0

    move-object v3, v11

    move-object v4, v0

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;

    invoke-direct {v7, p0, v11}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V

    move-object v1, v9

    move-object v2, p1

    move-object v3, v10

    move-object v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SummarizeBeforeTranslateObserver"

    const-string v0, "translation successful, but no result"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$successDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 2

    const-string v0, "SummarizeBeforeTranslateObserver"

    const-string v1, "translation failed : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$successDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    return-void
.end method

.method public onFailedAuthTokenExpired()V
    .locals 2

    const-string v0, "SummarizeBeforeTranslateObserver"

    const-string v1, "translation failed : onFailedAuthTokenExpired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->val$successDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAiResult(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;)V

    return-void
.end method
