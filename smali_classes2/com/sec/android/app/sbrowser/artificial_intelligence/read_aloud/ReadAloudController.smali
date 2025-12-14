.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private mExternalRhaTabId:Ljava/lang/Integer;

.field private mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

.field private mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

.field private mReadAloudTurnOnDialog:Lm/l;

.field private final mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

.field private mReadArticlesAloudRecommender:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

.field private mShouldLaunchReadArticlesAloud:Z

.field private final mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation
.end field

.field private final mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

.field private final mSupplierType:I

.field private mTranslatorTurnOnDialog:Lm/l;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierType()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplierType:I

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->createReadArticlesAloudDelegate()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/A;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/A;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->isSupported(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloudRecommender:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    :cond_0
    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadAloudPopupWindow$13(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onReadAloudWebpage$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onReadAloudWebpage$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    return-object p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    return-object p0
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplierType:I

    return p0
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->createReadAloudHandler(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->destroyReadAloudHandler()V

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getArticle(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getSummary(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showTurnOnTranslationDialog(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadArticlesAloudPopupWindowInternalAsync$15(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$getSourceLanguageIfEmpty$25(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onLoadFinished$5()V

    return-void
.end method

.method private changeLanguageForExceptedRegion(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/util/Locale;

    const-string p1, "zhhk"

    invoke-direct {p0, p1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkReadAloudAvailable(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->isReadAloudAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "si__ReadAloudController"

    const-string v2, "checkReadAloudAvailable(): read aloud is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f14008c

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    const-string v0, "NoReadAloud"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResult(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->getTabId()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getCurrentTabId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f14007e

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private checkReadArticlesAloudAvailable(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    const-string v1, "si__ReadAloudController"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "checkReadArticlesAloudAvailable(): no network available"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f14009f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prevent Online"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->getTabId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getCurrentTabId()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f14007f

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldShowAiButton()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->shouldIncludeReadArticlesAloud()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_0
    const-string v0, "checkReadArticlesAloudAvailable(): cannot support this webpage"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getBlockedType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const v0, 0x7f140089

    goto :goto_1

    :cond_5
    const v0, 0x7f14008c

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoReadAloud"

    invoke-direct {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private createReadAloudCallback()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$5;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V

    return-object v0
.end method

.method private createReadAloudDelegate()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$4;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V

    return-object v0
.end method

.method private createReadAloudHandler(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createReadAloudHandler(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;->isReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudHandler;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudHandler;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->createReadAloudDelegate()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->createReadAloudCallback()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->initialize(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getSourceLanguageList()Landroidx/lifecycle/S;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getSourceLanguageList()Landroidx/lifecycle/S;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/lifecycle/J;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method private createReadArticlesAloudDelegate()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$Delegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onLoadFinished$7(Ljava/lang/String;)V

    return-void
.end method

.method private destroyReadAloudHandler()V
    .locals 2

    const-string v0, "si__ReadAloudController"

    const-string v1, "destroyReadAloudHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->dismissReadAloudToolbar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->stopReadArticlesAloud()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->enableAiButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopGettingSentenceHandler()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getSourceLanguageList()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onLoadFinished$6()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadArticlesAloudPopupWindowInternalAsync$16(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showTurnOnTranslationDialog$24(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getArticle(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->getHostTabId()I

    move-result v0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->getArticleTitles()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getArticle(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private getCurrentReadAloudHandler()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    return-object p0
.end method

.method private getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSourceLanguageIfEmpty(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private getSourceLanguageOrShowError(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/E;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getSourceLanguageIfEmpty(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private getSourceLanguageOrShowErrorAsync(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 2
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudSupportLanguage(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "si__ReadAloudController"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getSourceLanguageOrShowError(): => supported language: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "getSourceLanguageOrShowError(): => not supported language: "

    invoke-static {v0, p1, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showUnsupportLangSnackbar()V

    const-string p0, ""

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private getSummary(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V
    .locals 0
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->summarizeArticle(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudSummaryListener;)V

    return-void
.end method

.method private getTargetLanguageOrShowError(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "si__ReadAloudController"

    if-eqz v0, :cond_0

    const-string p0, "getTargetLanguageOrShowError(): cannot detect target language"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudSupportLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "getTargetLanguageOrShowError(): for  => supported language: "

    invoke-static {p0, p1, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string v0, "getTargetLanguageOrShowError(): for  => not supported language: "

    invoke-static {v0, p1, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f14008d

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return-object v1
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onLoadFinished$8(I)V

    return-void
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$isUnsupportedLanguage$27(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isActivityDestroyed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

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

.method private isDownloadableLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getTtsDownloadableLanguageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "isDownloadableLanguage(): can\'t download -> "

    const-string v0, "si__ReadAloudController"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isInvalidSourceLanguage(Ljava/lang/String;Z)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isInvalidSourceLanguage(): check -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->getSourceLanguageList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->isSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isInvalidSourceLanguage(): translatable -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isUnsupportedLanguage(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isUnsupportedLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "isInvalidSourceLanguage(): not translatable -> "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isUnsupportedLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isInvalidTargetLanguage(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isTranslationSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ")"

    const-string v3, " => "

    const-string v4, "si__ReadAloudController"

    if-eqz v0, :cond_2

    const-string p0, "isInvalidTargetLanguage(): no need to translate -> ("

    invoke-static {p0, p1, v3, p2, v2}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string v0, "isInvalidTargetLanguage(): check -> ("

    invoke-static {v0, p1, v3, p2, v2}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isInvalidTargetLanguage(): translatable -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isUnsupportedLanguage(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isUnsupportedLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isUnsupportedLanguage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method private isReadAloudSupportLanguage(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/FeatureSupportLanguageUtils;->getReadAloudSupportLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isReadAloudSupportLanguage(): supported -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudController"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isTranslationSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudTranslationSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->isSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUnsupportedLanguage(Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "isUnsupportedLanguage(): "

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getTtsSupportedLanguageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isUnsupportedLanguage(): speakable -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ReadAloudController"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v3, v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") => "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "isUnsupportedLanguage(): wrong language -> "

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    xor-int/lit8 p0, v3, 0x1

    return p0
.end method

.method private isUnsupportedLanguage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/FeatureSupportLanguageUtils;->getReadAloudSupportLanguages(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isUnsupportedLanguage(): supported -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ReadAloudController"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/D;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/D;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getTtsSupportedLanguageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isUnsupportedLanguage(): speakable -> "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "isUnsupportedLanguage(): wrong language -> "

    invoke-static {v3, p2, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->changeLanguageForExceptedRegion(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isUnsupportedLanguage(): result -> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isUnsupportedLanguage(): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    const-string v3, ") => "

    invoke-static {v1, p0, p2, v3}, LB/e;->A(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p0, p1, 0x1

    invoke-static {v2, v1, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onReadAloudWebpage$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$onReadAloudWebpage$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showTurnOnReadAloudDialog$21(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$getSourceLanguageIfEmpty$25(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const-string p2, "SOURCE"

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getLanguageFromSixTransService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "si__ReadAloudController"

    const-string p2, "getSourceLanguageOrShowError(): cannot detect source language"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getSourceLanguageOrShowError$26(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getSourceLanguageOrShowErrorAsync(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private static synthetic lambda$isUnsupportedLanguage$27(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onSupportLanguagesUpdated()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onLoadFinished$5()V
    .locals 5

    const-string v0, "onLoadFinished(): showReadArticlesAloudPopupWindow"

    const-string v1, "si__ReadAloudController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onLoadFinished(): current tab is changed from "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    return-void
.end method

.method private synthetic lambda$onLoadFinished$6()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/s;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onLoadFinished$7(Ljava/lang/String;)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/s;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$onLoadFinished$8(I)V
    .locals 3

    const-string v0, "si__ReadAloudController"

    const-string v1, "onLoadFinished(): getArticle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/r;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getArticle(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private synthetic lambda$onReadAloudWebpage$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReadAloudWebpage$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;

    const/4 v7, 0x2

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    return-void
.end method

.method private synthetic lambda$onReadAloudWebpage$3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onReadAloudWebpage$4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    if-eqz p4, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;

    const/4 v5, 0x2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p4, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showReadAloudPopupWindow$12(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    new-instance p5, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$1;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, " "

    invoke-static {p0, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/LanguageDetectionUtils;->identifyLanguage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IdentifyCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "si__ReadAloudController"

    const-string p2, "showReadAloudPopupWindow(): contents extraction fail"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f14008c

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showReadAloudPopupWindow$13(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_0

    new-instance p5, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;

    const/4 v5, 0x1

    move-object v0, p5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p1, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->getSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showReadAloudPopupWindowInternal$18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadAloudPopupWindowInternalAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showReadAloudPopupWindowInternalAsync$19(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->launchReadAloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showReadAloudPopupWindowInternalAsync$20(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->refresh()V

    const/4 p4, 0x1

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isInvalidSourceLanguage(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "DownloadLangpack"

    const-string v2, "showReadAloudPopupWindowInternal(): show download language dialog => "

    const-string v3, "si__ReadAloudController"

    if-eqz v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->changeLanguageForExceptedRegion(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showTtsSettingPopup(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isInvalidTargetLanguage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->changeLanguageForExceptedRegion(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showTtsSettingPopup(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p4, "showReadAloudPopupWindowInternal()"

    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopSummarizeIfNeeded()V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopTranslateIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->stopCurrentReadAloud()V

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/x;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p4, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$showReadAloudToolbar$9()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->isFindOnPageRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isCurrentTabInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->showReadAloudToolbar()V

    return-void
.end method

.method private synthetic lambda$showReadArticlesAloudPopupWindow$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 0

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showReadArticlesAloudPopupWindow$11(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 9

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;)V

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    return-void
.end method

.method private synthetic lambda$showReadArticlesAloudPopupWindowInternal$14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindowInternalAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showReadArticlesAloudPopupWindowInternalAsync$15(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isQuickAccessNativePage()Z

    move-result p5

    if-nez p5, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReadArticlesAloudEnabled()Z

    move-result p5

    if-nez p5, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result p5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p5, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "showReadArticlesAloudPopupWindowInternal(): current tab is changed from "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__ReadAloudController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->launchReadArticlesAloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showReadArticlesAloudPopupWindowInternalAsync$16(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->requestArticleListUpdate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud$UpdateArticleListCallback;)V

    return-void
.end method

.method private synthetic lambda$showReadArticlesAloudPopupWindowInternalAsync$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->refresh()V

    const/4 p5, 0x0

    invoke-direct {p0, p1, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isInvalidSourceLanguage(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "DownloadLangpack"

    const-string v2, "showReadArticlesAloudPopupWindowInternal(): show download language dialog => "

    const-string v3, "si__ReadAloudController"

    if-eqz v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->changeLanguageForExceptedRegion(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudLangpackDialog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isInvalidTargetLanguage(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsLanguageUtils;->getLocaleForTTS(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->changeLanguageForExceptedRegion(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudLangpackDialog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p5, "showReadArticlesAloudPopupWindowInternal()"

    invoke-static {v3, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopSummarizeIfNeeded()V

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopTranslateIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->stopCurrentReadAloud()V

    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {p5, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$showTtsSettingPopup$28(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance p2, Landroid/content/ComponentName;

    const-string v0, "com.samsung.SMT"

    const-string v1, "com.samsung.SMT.gui.DownloadList"

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showTurnOnReadAloudDialog$21(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setReadArticlesAloudEnabled(Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->enableAiButton()V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showTurnOnReadAloudDialog$22(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudTurnOnDialog:Lm/l;

    return-void
.end method

.method private static synthetic lambda$showTurnOnTranslationDialog$23(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showTurnOnTranslationDialog$24(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mTranslatorTurnOnDialog:Lm/l;

    return-void
.end method

.method private launchReadAloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isTranslationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launchReadAloud() for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, ": with translation -> "

    invoke-static {v0, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__ReadAloudController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getCurrentTabId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->setLanguages(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel$Builder;->build()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->createReadAloudHandler(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudModel;)V

    const-string p1, "ReadAloud"

    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private launchReadArticlesAloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isTranslationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "launchReadArticlesAloud() for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v0, ": with translation -> "

    invoke-static {v0, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", article size -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->getArticleCount()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "si__ReadAloudController"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloudRecommender:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplierType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v1, v2

    :cond_2
    const-string v0, "launchReadArticlesAloud(), isCustomTab: "

    invoke-static {v0, v3, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->getArticleCount()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloudRecommender:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->sendAiToBriefByLaunch(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->setLaunchWithTranslation(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->launchReadArticlesAloud()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->getArticleCount()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "ReadHighlightsAloud_With_List"

    goto :goto_2

    :cond_4
    const-string p1, "ContinuousReadAloud"

    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$getSourceLanguageOrShowError$26(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showTurnOnReadAloudDialog$22(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadArticlesAloudPopupWindowInternalAsync$17(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showTurnOnTranslationDialog$23(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Z)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showTtsSettingPopup$28(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadAloudPopupWindow$12(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadArticlesAloudPopupWindow$10(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method private sendEventLogWithResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Result"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Result"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "20031"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Mode"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showReadAloudPopupWindowInternalAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onReadAloudFailed()V

    const-string p1, "NoLanguage"

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;

    const/4 v6, 0x4

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method private showReadArticlesAloudLangpackDialog(Ljava/lang/String;)V
    .locals 11

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v10, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$2;

    invoke-direct {v10, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-virtual/range {v2 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->showDownloadLangpackDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "showReadArticlesAloudLangpackDialog(): "

    const-string v0, "si__ReadAloudController"

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showReadArticlesAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private showReadArticlesAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->checkReadArticlesAloudAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onReadAloudFailed()V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/C;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/C;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getSourceLanguageOrShowError(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private showReadArticlesAloudPopupWindowInternalAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "NoLanguage"

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onReadAloudFailed()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getTargetLanguageOrShowError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onReadAloudFailed()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getReadAloudSupplierMode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, v1, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->sendEventLogWithResultAndMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/TextTranslateManager;->getTranslator()Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;->refresh()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method

.method private showTtsSettingPopup(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isDownloadableLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showUnsupportLangSnackbar()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140b9d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-object p1, v1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/B;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/B;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V

    const p0, 0x7f140ed0

    invoke-virtual {v0, p0, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402c1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    iget-object p1, p0, Lm/k;->a:Lm/h;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lm/h;->m:Z

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTurnOnReadAloudDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getReadArticlesAloudTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudTurnOnDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudTurnOnDialog:Lm/l;

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/u;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/u;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;I)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudTurnOnDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showTurnOnTranslationDialog(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/t;-><init>(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getTranslateTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mTranslatorTurnOnDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mTranslatorTurnOnDialog:Lm/l;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/u;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mTranslatorTurnOnDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showUnsupportLangSnackbar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f140086

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadArticlesAloudPopupWindow$11(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadAloudPopupWindowInternalAsync$19(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadAloudToolbar$9()V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadAloudPopupWindowInternalAsync$20(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadAloudPopupWindowInternal$18(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$showReadArticlesAloudPopupWindowInternal$14(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public checkOnBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->checkOnBackPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dismissReadAloudToolbar()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    :cond_0
    return-void
.end method

.method public hideReadAloudToolbar(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->hideReadAloudToolbar(ZZ)V

    return-void
.end method

.method public isReadAloudOrReadArticlesAloudRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadAloudResultViewShowing()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudHighlightResultViewStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadAloudRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->isReadArticlesAloudRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadAloudSplitOverShowing()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudHighlightResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->isResultViewInBottomMode()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->isSplitOverShowing()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isReadAloudToolbarMaximized()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudSplitOverShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadArticlesAloudAvailable()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result p0

    return p0
.end method

.method public isReadArticlesAloudRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->isReadArticlesAloudRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReadArticlesAloudRunningInHostTab()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->getTabId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getCurrentTabId()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchReadArticlesAloudByExternal(ILjava/lang/String;)V
    .locals 3

    const-string v0, "[launchReadArticlesAloudByExternal]"

    const-string v1, "si__ReadAloudController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[launchReadArticlesAloudByExternal] newsListUrl: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mShouldLaunchReadArticlesAloud:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[launchReadArticlesAloudByExternal] mExternalRhaTabId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mExternalRhaTabId:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->loadUrl(ILjava/lang/String;)V

    return-void
.end method

.method public maximizeReadAloudToolbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->maximizeReadAloudToolbar()V

    return-void
.end method

.method public minimizeReadAloudToolbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->minimizeReadAloudToolbar()V

    return-void
.end method

.method public onBottomOffsetsChanged(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onBottomOffsetsChanged(F)V

    :cond_0
    return-void
.end method

.method public onBottomOffsetsChanged(Landroid/app/Activity;ZIF)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-eqz p2, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result p2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscape(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    int-to-float p1, p3

    sub-float/2addr p1, p4

    int-to-float v0, p2

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    sub-int/2addr p3, p2

    int-to-float p4, p3

    :cond_2
    move p1, p4

    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->onBottomOffsetsChanged(F)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->onBottomOffsetsChanged(F)V

    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onContentViewTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onCurrentTabChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onCurrentTabChanged(I)V

    :cond_1
    return-void
.end method

.method public onEditModeChanged(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onEditModeChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onHostTabChanged(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->getTabId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->isValidTab(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->getTabId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onHostTabChanged(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onHostTabChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadFinished(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mShouldLaunchReadArticlesAloud:Z

    if-eqz v0, :cond_0

    const-string v0, "si__ReadAloudController"

    const-string v1, "onLoadFinished(): should launch read articles Aloud"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mShouldLaunchReadArticlesAloud:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/p;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/p;-><init>(IILjava/lang/Object;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloud:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloud;->onLoadFinished(I)V

    :cond_1
    return-void
.end method

.method public onMainViewToolbarHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onMainViewToolbarHeightChanged()V

    return-void
.end method

.method public onNativePageEditModeChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onEditModeChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onReadAloudWebpage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReadAloudWebpage(): read articles aloud"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, " with "

    invoke-static {v1, p2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "si__ReadAloudController"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;

    const/4 v6, 0x3

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/z;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onToolbarThemeChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onToolbarThemeChanged()V

    :cond_0
    return-void
.end method

.method public onTopOffsetsChanged(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->onTopOffsetsChanged(F)V

    :cond_0
    return-void
.end method

.method public recommendReadArticlesAloudIfPossible()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadArticlesAloudRecommender:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadArticlesAloudRecommender;->recommendReadArticlesAloudIfPossible()V

    return-void
.end method

.method public savePage()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isReadAloudOrReadArticlesAloudRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->stopReadAloud()V

    :cond_0
    return-void
.end method

.method public setSummarizeViewModel(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mMainViewViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    return-void
.end method

.method public showReadAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mSupplier:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/model/IReadAloudSupplier;->getView()Landroid/view/View;

    move-result-object p0

    const p2, 0x7f14008c

    invoke-static {p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->checkReadAloudAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onReadAloudFailed()V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/v;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudScript;->initialize(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public showReadAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/F;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/F;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getSourceLanguageIfEmpty(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public showReadAloudToolbar()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/s;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public showReadArticlesAloudPopupWindow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isPreventOnlineProcessingTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->showToastIfOnlineProcessingDisallowed()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showAllowOnlineProcessingDialog(Landroid/app/Activity;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/w;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReadArticlesAloudEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showTurnOnReadAloudDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->showReadArticlesAloudPopupWindowInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public startReadAloud()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->start(Z)V

    return-void
.end method

.method public stopCurrentReadAloud()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getCurrentReadAloudHandler()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->getCurrentReadAloudHandler()Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->stop()V

    return-void
.end method

.method public stopReadAloud()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->mReadAloudHandler:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/IReadAloudHandler;->stop()V

    return-void
.end method

.method public updateReadAloudStatus()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isReadArticlesAloudEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudController;->stopCurrentReadAloud()V

    :cond_0
    return-void
.end method
