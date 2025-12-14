.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;


# instance fields
.field private mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

.field private final mActivity:Landroid/app/Activity;

.field private final mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Y;"
        }
    .end annotation
.end field

.field private mSummarizeBeforeTranslateObserver:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

.field private mSummarizeTurnOnDialog:Lm/l;

.field private mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/e;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/e;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->sendSummarizeSALoggingWithSourceAndLength(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->updateTranslateLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$registerSummarizeObserver$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$getSummaryPageControllerCallback$9(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeWebsite$13()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeWebsite$14(Z)V

    return-void
.end method

.method private denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZZ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;->onBlockedDomain()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;->onPaywall()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;->onNoIndex()V

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;)V

    if-eqz p4, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonVisibility(Z)V

    :cond_4
    return-void
.end method

.method private dismissFTUDialog()V
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->dismissFTUDialog()V

    return-void
.end method

.method private dismissSummarizeTurnOnDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeClick$4(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeClick$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$sendSummarizeSALoggingWithSourceAndLength$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getArticle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getArticle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDetectArticleCallback(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSummaryPageControllerCallback(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            "Z",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;",
            ")",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/i;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;Z)V

    return-object v0
.end method

.method private getVideoCallback(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;JLjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method private getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$getSummaryPageControllerCallback$7(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeWebsite$11(Z)V

    return-void
.end method

.method private isBlockedSite(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->isBlockedSite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isSummaryNotAvailableInternalPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isSummaryNotAvailableInternalPage()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeClick$3(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$onSummarizeWebsite$12()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$getSummaryPageControllerCallback$10(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$10(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {v4, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;

    const/4 v7, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V

    invoke-static {p1, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->isRobotsIndexBlocked(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$7(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
    .locals 2

    const-string v0, "article detection result : "

    const-string v1, "SummarizeController"

    invoke-static {v0, v1, p4}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-interface {p0, p3, p4, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;ZZI)V

    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$8(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    const-string v0, "SummarizeController"

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    const-string p6, "Paywall blocked"

    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p6, 0x2

    invoke-direct {p0, p1, p6, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZZ)V

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p4, p6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result v2

    invoke-interface {p6, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isBlockedSite(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_1

    invoke-direct {p0, p1, v1, p2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZZ)V

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    if-eqz p2, :cond_3

    const-string p2, "article detection requested"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p5

    :cond_2
    new-instance p2, LM4/a;

    const/16 p6, 0xa

    invoke-direct {p2, p0, p6, p3, p4}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p5, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->getExtractSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V

    :cond_3
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;->onSuccess()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$9(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V
    .locals 9

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_0

    const-string p6, "SummarizeController"

    const-string v0, "RobotIndexBlocked"

    invoke-static {p6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p6, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p6, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZZ)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p4, p6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    new-instance p6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;

    const/4 v8, 0x1

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/j;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V

    invoke-static {p5, p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->isPaywall(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source language list : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-static {v1, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SummarizeController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->updateTranslateLanguage()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onSummarizeClick$3(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->showSummarizePopupWindowInternal(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSummarizeClick$4(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSummarizeEnabled(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->enableAiButton()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->showSummarizePopupWindowInternal(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSummarizeClick$5(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    return-void
.end method

.method private synthetic lambda$onSummarizeWebsite$11(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->showSummarizePopupWindow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSummarizeWebsite$12()V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/h;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    return-void
.end method

.method private synthetic lambda$onSummarizeWebsite$13()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->showSummarizePopupWindow(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSummarizeWebsite$14(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/g;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$registerSummarizeObserver$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/common/livedata/Event;Ljava/lang/String;)V
    .locals 7

    const-string v0, "[onChanged:onCallback] languageCode: "

    const-string v1, "SummarizeController"

    invoke-static {v0, p3, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeBeforeTranslateObserver:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeBeforeTranslateObserver:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeBeforeTranslateObserver:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->update(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeBeforeTranslateObserver:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->onChanged(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private synthetic lambda$registerSummarizeObserver$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/F;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/F;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private synthetic lambda$sendSummarizeSALoggingWithSourceAndLength$6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->sendSummarizeSALoggingWithSourceAndLengthAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/common/livedata/Event;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$registerSummarizeObserver$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;Lcom/sec/android/app/sbrowser/common/livedata/Event;Ljava/lang/String;)V

    return-void
.end method

.method private makeSummarizePopupWindow(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setRequestCode(J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setDocumentTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setOriginalTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getOriginalUrl(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getArticle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setArticleText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setArticleLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$getSummaryPageControllerCallback$8(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method private onSummarizeClick(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isPreventOnlineProcessingTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->showToastIfOnlineProcessingDisallowed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showAllowOnlineProcessingDialog(Landroid/app/Activity;)V

    const-string v0, "Prevent_Online"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->sendSummarizeSALoggingWithSourceAndLength(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/l;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSummarizeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/l;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/l;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getSummarizeTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/f;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeTurnOnDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const-string v0, "TurnOff"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->sendSummarizeSALoggingWithSourceAndLength(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->showSummarizePopupWindowInternal(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->updateTranslateLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private requestSummarizeWithNotTranslated(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->isVideoTranscriptEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "youtube.com/watch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getVideoCallback(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->requestSummarize(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/VideoTranscriptCallback;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->requestSummarize(JLjava/lang/String;Ljava/lang/String;)LNc/j0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslated(Z)V

    return-void
.end method

.method private requestTranslateAndSummarize(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->createAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    return-object p0
.end method

.method private sendSummarizeSALoggingWithSourceAndLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/F;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/F;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private sendSummarizeSALoggingWithSourceAndLengthAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Result"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Source"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getArticle()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getArticle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Length"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "20053"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "20054"

    goto :goto_1

    :cond_1
    const-string p1, "20004"

    :goto_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isArticleContents()Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Article"

    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private showSummarizePopupWindowInternal(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTabId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f14009f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "NoNetwork"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->sendSummarizeSALoggingWithSourceAndLength(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummaryNotAvailableInternalPage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f14009e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "NoSummarize"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->sendSummarizeSALoggingWithSourceAndLength(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->stopReadAloudIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarTranslated(Landroid/app/Activity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getDetectArticleCallback(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(ZZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Landroidx/lifecycle/Y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSourceLanguageListChangedObserver:Landroidx/lifecycle/Y;

    return-object p0
.end method

.method private updateTranslateLanguage()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/p;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method private updateTranslateLanguage(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "SummarizeController"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateSourceLanguage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "[updateTranslateLanguage] web contents language code is empty"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateSourceLanguage(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDefaultTargetLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->setTranslateTargetLanguage(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateTranslateLanguage : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateSourceLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getTranslateTargetLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getArticle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getWebContentsLanguageCode(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->makeSummarizePopupWindow(JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->requestSummarizeWithNotTranslated(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkOnBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->dismiss(Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dismissAIViews(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->dismissSummarizedView(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->dismissFTUDialog()V

    return-void
.end method

.method public dismissSummarizedView(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->dismiss(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->dismissSummarizeTurnOnDialog()V

    return-void
.end method

.method public init(ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getSummaryPageControllerCallback(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getSummarizeControllerScriptVersion(Landroid/content/Context;)I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->isVideoTranscriptEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->initVideoSubtitleControllerScript(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;)V

    :cond_0
    return-void
.end method

.method public initForReadAloud(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->getSummaryPageControllerCallback(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getSummarizeControllerScriptVersion(Landroid/content/Context;)I

    move-result p3

    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V

    sget-object p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->isVideoTranscriptEnabled(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/VideoTranscriptManager$Companion;->initVideoSubtitleControllerScript(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;)V

    :cond_0
    return-void
.end method

.method public isSummarizedViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSummarySplitOverShowing()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummaryResultViewStyle()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->isFloatingPaneModeBottom()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->shouldShowSplitView()Z

    move-result p0

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public onAIViewControllerDismissed()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    return-void
.end method

.method public onBottomOffsetsChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onBottomOffsetsChanged(F)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onMainViewToolbarHeightChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onMainViewToolbarHeightChanged()V

    return-void
.end method

.method public onResume()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onResume()V

    :cond_0
    return-void
.end method

.method public onSummarizeWebsite()V
    .locals 3

    const-string v0, "SummarizeController"

    const-string v1, "onSummarizeWebsite()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/h;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;I)V

    const/4 p0, 0x1

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    return-void
.end method

.method public onToolbarOffsetsChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->onToolbarOffsetsChanged(F)V

    :cond_0
    return-void
.end method

.method public registerSummarizeObserver(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;->getDtoResultBeforeTranslate()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mActivity:Landroid/app/Activity;

    check-cast v1, Landroidx/lifecycle/J;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/k;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/k;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/translate/TransServiceDelegate;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public requestSummarize(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getTargetLang()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarTranslated(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, ", "

    const-string v3, "SummarizeController"

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->isTargetLanguageSet()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v6, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v0, "translated && target lang and raw content lang is diff ("

    invoke-static {v0, v6, v2, p4, v1}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->requestTranslateAndSummarize(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "translated : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", target ,raw content lang : ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->requestSummarizeWithNotTranslated(JLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFocusToSummaryTitle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->setFocusToSummaryTitle()V

    return-void
.end method

.method public setMainViewViewModel(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mSummarizeViewModel:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/viewmodel/SummarizeViewModel;

    return-void
.end method

.method public showSummarizePopupWindow(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->dismiss(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->onSummarizeClick(Ljava/lang/String;)V

    return-void
.end method

.method public updateSummarizeViewColorsForReaderMode()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->isSummarizedViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController;->mAIViewController:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewController;->updateViewsForReaderModeTheme()V

    :cond_0
    return-void
.end method
