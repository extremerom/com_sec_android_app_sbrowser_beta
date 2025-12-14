.class Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->requestTranslateAndSummarize(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

.field final synthetic val$article:Ljava/lang/String;

.field final synthetic val$languageCode:Ljava/lang/String;

.field final synthetic val$requestCode:J

.field final synthetic val$targetLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$article:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$languageCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$targetLang:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$requestCode:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->lambda$onCreated$2(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method

.method public static synthetic b(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p3, p2, p4, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->lambda$onCreated$0(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic c(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p3, p4, p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->lambda$onCreated$1(Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method

.method private synthetic lambda$onCreated$0(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Ljava/lang/String;J)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->getTargetText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateSourceLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->isValidTargetLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateTargetLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils$Companion;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getLocaleDefaultLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateTargetLanguage(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->q(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setArticleText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->q(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setArticleLanguage(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p0, p3, p4, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->z(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreated$1(Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->r(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;

    move-object v1, v7

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/n;-><init>(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreated$2(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translation failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;->code()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SummarizeController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    const-string p1, "translation failed"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setFailedResult(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)V
    .locals 7
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$article:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$languageCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$targetLang:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->val$requestCode:J

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;

    invoke-direct {p1, p0, v4, v5, v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;J)V

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;

    const/4 v5, 0x2

    invoke-direct {v6, v5, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;-><init>(ILjava/lang/Object;)V

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    const-string p1, "translation failed2"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setFailedResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFailed()V
    .locals 2

    const-string v0, "SummarizeController"

    const-string v1, "translation failed : appInfo create failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    const-string v0, "translation failed"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setFailedResult(Ljava/lang/String;)V

    return-void
.end method

.method public onFailedAuthTokenExpired()V
    .locals 2

    const-string v0, "SummarizeController"

    const-string v1, "translation failed : auth token expired"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    move-result-object p0

    const-string v0, "translation failed"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setAuthExpiredResult(Ljava/lang/String;)V

    return-void
.end method
