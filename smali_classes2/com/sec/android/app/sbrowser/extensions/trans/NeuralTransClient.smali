.class public Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;,
        Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageCallback;,
        Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;
    }
.end annotation


# instance fields
.field private mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

.field private final mAvailableLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdxId:Ljava/lang/Integer;

.field private mRequestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

.field private mSourceLanguage:Ljava/lang/String;

.field private mSourceLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetLanguage:Ljava/lang/String;

.field private final mTargetLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransId:Ljava/lang/String;

.field private mTranslationRequestedCallback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;

.field private mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mAvailableLanguageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTargetLanguageList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguageList:Ljava/util/ArrayList;

    const-string v1, "en"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguage:Ljava/lang/String;

    const-string v1, "ko"

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTargetLanguage:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mRequestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/six/SixConstants;->LogIDs:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTransId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslationRequestedCallback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mIdxId:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->loadTranslator()V

    return-void
.end method

.method public static synthetic a(JLcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->lambda$clear$4(JLcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;JLcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->lambda$destroyTrans$2(Ljava/util/ArrayList;JLcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;JLcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->lambda$refreshTranslator$3(JLcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->lambda$runTranslate$0(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method

.method public static synthetic e()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;-><init>()V

    return-object v0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->lambda$runTranslate$1(Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mIdxId:Ljava/lang/Integer;

    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;

    return-object v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Lcom/samsung/android/sdk/scs/ai/language/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mIdxId:Ljava/lang/Integer;

    return-void
.end method

.method private identifyLanguageAndGetCandidate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->identifyLanguageAndGetCandidate(Ljava/lang/String;Ljava/lang/Integer;ZZ)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    :cond_0
    return-void
.end method

.method private isTranslateV2()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$clear$4(JLcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p2

    const-string v0, "Success"

    invoke-virtual {p2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->clearResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p2

    const-string v0, "Fail-Clear"

    invoke-virtual {p2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->clearResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$destroyTrans$2(Ljava/util/ArrayList;JLcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Success"

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->destroyTransResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p3, "Fail-Destroy"

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->destroyTransResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$refreshTranslator$3(JLcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getLanguageDirectionStateMap()Ljava/util/Map;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguageList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguage:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTargetLanguageList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTargetLanguageList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p3, "Success"

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->clearResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p3, "Fail-Refresh"

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->clearResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$runTranslate$0(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->getTargetText()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->onResultWithTraslate(Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic lambda$runTranslate$1(Ljava/lang/String;JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->isTranslateV2()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Fail-Translate"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "runTranslate:"

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NeuralTransClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    return-void
.end method

.method private notifyTranslationRequested()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslationRequestedCallback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;->handleTranslationRequestedEvent()V

    :cond_0
    return-void
.end method

.method private onResultWithTraslate(Ljava/lang/String;J)V
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Success"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    return-void
.end method

.method private runTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTransId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, p1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {p4, p2, p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->verbose(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object p2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->forcePivot(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->requestingSourceId(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    if-eqz p6, :cond_1

    const-string p2, "tagged"

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->mode(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->builder()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;->source(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/trans/b;

    invoke-direct {p2, p0, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/b;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;J)V

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;->onSuccess(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/trans/c;

    invoke-direct {p2, p0, p4, p7, p8}, Lcom/sec/android/app/sbrowser/extensions/trans/c;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;Ljava/lang/String;J)V

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;->onFailure(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->notifyTranslationRequested()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mAppInfo:Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method private translateImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 12

    move-object v0, p0

    move-object v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v10, p7

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    const-string v1, ":"

    move-object v3, p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    if-le v6, v2, :cond_1

    aget-object v1, v1, v7

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_1
    if-eqz p6, :cond_3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v5, v10, v11}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->onResultWithTraslate(Ljava/lang/String;J)V

    return-void

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->runTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->runTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v5, v10, v11}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->onResultWithTraslate(Ljava/lang/String;J)V

    return-void

    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->runTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NeuralTransClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Fail-Translate"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    invoke-virtual {v1, v10, v11, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTransId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->clear(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/extensions/trans/a;

    invoke-direct {p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/a;-><init>(J)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p1, "NeuralTransClient"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string p1, "Fail-Clear"

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->clearResult(JLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public createTrans(J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mRequestType:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$5;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;J)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->createAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V

    return-void
.end method

.method public destroyTrans(Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTransId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->clear(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p0

    new-instance p1, LO4/e;

    const/4 v1, 0x2

    invoke-direct {p1, v0, p2, p3, v1}, LO4/e;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NeuralTransClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Fail-Destroy"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->destroyTransResult(J[Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getAvailableLanguageDirectionList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getDownloadableLanguageDirectionList()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAvailableLanguageList(J)V
    .locals 3

    const-string v0, "NONE"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->isTranslateV2()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->getAvailableLanguageDirectionList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(JLjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v2, "NeuralTransClient"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->isTranslateV2()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Fail-GetLangList"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(JLjava/lang/String;[Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getDownloadableLanguageDirectionList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getLanguageDirectionStateMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;->DOWNLOADABLE:Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-virtual {v2}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->getTargetLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-virtual {v1}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSourceLanguageList(J)V
    .locals 4

    const-string v0, "SOURCE"

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->isTranslateV2()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguageList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(JLjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->isTranslateV2()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Fail-GetLangList"

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getLangListResult(JLjava/lang/String;[Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public identifyLanguageAndGetCandidate(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;J)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->identifyLanguageAndGetCandidate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnIdentifyLanguageGetCandidateCallback;)V

    return-void
.end method

.method public loadTranslator()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->refreshTranslator()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NeuralTransClient"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public refreshTranslator()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getLanguageDirectionStateMap()Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTargetLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTargetLanguageList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mSourceLanguage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NeuralTransClient"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public refreshTranslator(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v1, LO4/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, LO4/e;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NeuralTransClient"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p0

    const-string v0, "Fail-Refresh"

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->refreshResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTranslationRequestCallback(Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslationRequestedCallback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->mTranslationRequestedCallback:Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient$OnTranslationRequestedCallback;

    :cond_0
    return-void
.end method

.method public translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 0

    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/extensions/trans/NeuralTransClient;->translateImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NeuralTransClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "Fail-Translate"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object p1

    invoke-virtual {p1, p7, p8, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->translateResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
