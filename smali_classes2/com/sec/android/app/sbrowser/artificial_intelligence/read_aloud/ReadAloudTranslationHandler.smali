.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

.field private mSourceLanguage:Ljava/lang/String;

.field private mTargetLanguage:Ljava/lang/String;

.field private mTranslationEnabled:Z

.field private final mTranslationLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->lambda$translate$2(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->lambda$getTranslationLanguageItems$3(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->lambda$translate$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->lambda$getTranslationLanguageItems$4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->lambda$translate$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method

.method private getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getLocaleDefaultLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "si__ReadAloudTranslationHandler"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "getDefaultTargetLanguage(): return user selected language -> "

    invoke-static {p0, p1, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "getDefaultTargetLanguage(): return default language -> "

    invoke-static {p0, v0, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    const-string v0, "en"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    const-string v0, "es"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method private getTranslationLanguageItems(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getTranslationLanguageItems(): translatable -> "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "si__ReadAloudTranslationHandler"

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/FeatureSupportLanguageUtils;->getReadAloudSupportLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTranslationLanguageItems(): read aloud supported -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/D;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/D;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->getAvailableLanguages()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "getTranslationLanguageItems(): speakable -> "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "getTranslationLanguageItems(): wrong language -> "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/U;-><init>(I)V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const-string p0, "Target Language"

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getTranslationLanguageItems(): result -> "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private isValidSourceLanguage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "en"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isValidTargetLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "en"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->isValidSourceLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$getTranslationLanguageItems$3(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private static synthetic lambda$getTranslationLanguageItems$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LangPackUtils;->getDisplayName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$translate$0(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translate(): result -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->getTargetLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudTranslationHandler"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->getTargetLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;->getTargetText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;->onTranslate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$translate$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translate(): error -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "si__ReadAloudTranslationHandler"

    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;->onTranslate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$translate$2(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;->builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource$TranslationSourceBuilder;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;->builder()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SourceStep;->source(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationSource;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/M;

    invoke-direct {v1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/M;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$SuccessCallbackStep;->onSuccess(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;

    move-result-object v0

    new-instance v1, La9/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2, p2, p1}, La9/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$FailureCallbackStep;->onFailure(Ljava/util/function/Consumer;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest$BuildStep;->build()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->translate(Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "translate(): error -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "si__ReadAloudTranslationHandler"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;->onTranslate(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateTranslationLanguages()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->getTranslationLanguageItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getAvailableLanguages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    return-object p0
.end method

.method public getSourceLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public isTranslationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationEnabled:Z

    return p0
.end method

.method public notifySupportLanguagesUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->isValidSourceLanguage(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "si__ReadAloudTranslationHandler"

    if-eqz v0, :cond_1

    const-string v0, "notifySupportLanguagesUpdated(): check target language is valid"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->updateTranslationLanguages()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->setTargetLanguage(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "notifySupportLanguagesUpdated(): source language is uninstalled."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->stop()V

    :goto_0
    return-void
.end method

.method public setSourceLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->updateTranslationLanguages()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setSourceLanguage(): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    const-string v0, "si__ReadAloudTranslationHandler"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTargetLanguage(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ptpt"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "pt"

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTargetLanguage(): get default target language -> "

    const-string v2, " => "

    const-string v3, "si__ReadAloudTranslationHandler"

    invoke-static {v1, p1, v2, v0, v3}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "setTargetLanguage(): cannot update target language"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationLanguages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    const-string p2, "setTargetLanguage(): set user selected language -> "

    invoke-static {p2, p1, v3}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    const-string p2, "setTargetLanguage(): set selected language -> "

    invoke-static {p2, p1, v3}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    const-string p2, "setTargetLanguage(): set default language -> "

    invoke-static {p2, p1, v2, v0, v3}, LB/e;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->isValidTargetLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadAloudLanguage(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onTranslationLanguagesUpdate()V

    return-void
.end method

.method public toggleTranslation(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toggleTranslation(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTranslationEnabled:Z

    const-string v2, "si__ReadAloudTranslationHandler"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->updateTranslationLanguages()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->setTargetLanguage(Ljava/lang/String;Z)V

    return-void
.end method

.method public translate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "translate(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudTranslationHandler"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->isTranslationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mTargetLanguage:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJ8/d;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "translate(): no need to translate"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler;->mSourceLanguage:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudTranslationHandler$TranslationResultCallback;->onTranslate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
