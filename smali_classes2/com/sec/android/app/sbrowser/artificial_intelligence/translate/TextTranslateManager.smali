.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsSupported:Ljava/lang/Boolean;


# instance fields
.field private final mSourceLanguageList:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation
.end field

.field private final mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mSourceLanguageList:Landroidx/lifecycle/X;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getNeuralTranslator(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->lambda$refresh$0(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    return-object v0
.end method

.method public static isSupport()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->sIsSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "FEATURE_NEURAL_TRANSLATION"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->sIsSupported:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->sIsSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$refresh$0(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->updateSourceLanguageList()V

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;->onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    :cond_0
    return-void
.end method

.method private updateSourceLanguageList()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mSourceLanguageList:Landroidx/lifecycle/X;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mSourceLanguageList:Landroidx/lifecycle/X;

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update source language list : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextTranslate"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mSourceLanguageList:Landroidx/lifecycle/X;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Failed to close"

    const-string v1, "TextTranslate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getSourceLanguageList()Landroidx/lifecycle/S;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mSourceLanguageList:Landroidx/lifecycle/X;

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->updateSourceLanguageList()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mSourceLanguageList:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    return-object p0
.end method

.method public refresh()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->refresh(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)V

    return-void
.end method

.method public refresh(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)V
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;",
            "Lcom/samsung/android/sdk/scs/ai/translation/LanguageDirectionState;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v1, LHa/a;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public translate(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->translate(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method public translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/scs/ai/language/AppInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    new-instance v1, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;

    invoke-direct {v1, p3, p4}, Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->isAvailableDirection(Lcom/samsung/android/sivs/ai/sdkcommon/translation/LanguageDirection;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, " to "

    const-string v3, "Failed to translate from "

    const-string v4, "TextTranslate"

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p4}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->verbose(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    move-result-object p2

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->mTranslator:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->builder()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;->source(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;

    move-result-object p2

    invoke-interface {p2, p5}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;->onSuccess(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;

    move-result-object p2

    invoke-interface {p2, p6}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;->onFailure(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->translate(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "."

    invoke-static {v3, p3, v2, p4, p1}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string p0, "because of no available direction."

    invoke-static {v3, p3, v2, p4, p0}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
