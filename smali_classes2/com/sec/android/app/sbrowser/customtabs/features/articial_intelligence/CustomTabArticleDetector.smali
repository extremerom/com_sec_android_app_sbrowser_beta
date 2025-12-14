.class public Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector$BlockedType;
    }
.end annotation


# instance fields
.field private final mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->lambda$getSummaryPageControllerCallback$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->lambda$getSummaryPageControllerCallback$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->lambda$getSummaryPageControllerCallback$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->lambda$getSummaryPageControllerCallback$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V

    return-void
.end method

.method private denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZ)V
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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;)V

    return-void
.end method

.method private getSummaryPageControllerCallback(ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;",
            ")",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    return-object v0
.end method

.method private isBlockedSite(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/ArtificialIntelligenceBlockListUtil;->isBlockedSite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Z)V
    .locals 2

    const-string v0, "article detection result : "

    const-string v1, "CustomTabArticleDetector"

    invoke-static {v0, v1, p4}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-interface {p0, p3, p4, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;ZZI)V

    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$1(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V
    .locals 3

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const-string v0, "CustomTabArticleDetector"

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    const-string p5, "Paywall blocked"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p5, 0x2

    invoke-direct {p0, p1, p5, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZ)V

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    const/4 v2, -0x1

    invoke-interface {p5, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->isBlockedSite(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-direct {p0, p1, v1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZ)V

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "article detection requested"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p2

    new-instance p5, LM4/a;

    const/16 v0, 0x10

    invoke-direct {p5, p0, v0, p3, p4}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p2, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->getExtractSentences(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/GetExtractSentencesCallback;)V

    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;->onSuccess()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$2(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_0

    const-string p5, "CustomTabArticleDetector"

    const-string v0, "RobotIndexBlocked"

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p5, 0x3

    invoke-direct {p0, p1, p5, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->denySummaryContents(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;IZ)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p5

    new-instance v7, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static {p5, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->isPaywall(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;)V

    return-void
.end method

.method private synthetic lambda$getSummaryPageControllerCallback$3(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V
    .locals 8

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {v4, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object p3

    new-instance v7, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static {p3, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->isRobotsIndexBlocked(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiPopupButton(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public init(ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mAiDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getJavascriptDelegate()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->getSummaryPageControllerCallback(ZLcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;)Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/ArtificialIntelligenceFeatureConfigUtils;->getSummarizeControllerScriptVersion(Landroid/content/Context;)I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController;->init(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/JavascriptDelegate;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;I)V

    return-void
.end method
