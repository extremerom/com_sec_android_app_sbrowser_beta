.class public Lcom/sec/android/app/sbrowser/promotion/PromotionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/promotion/PromotionController$Condition;
    }
.end annotation


# instance fields
.field private final mAnalyzer:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;

.field private final mExecutorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

.field private mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mModel:Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/ContextAnalyzerFactory;->create()Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mAnalyzer:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mExecutorList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->printLog()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->lambda$showNewsPromotion$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->lambda$showPromotionIfNecessary$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/promotion/PromotionController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mExecutorList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/promotion/PromotionController;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->isSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    new-instance v2, Lcom/sec/android/app/sbrowser/promotion/a;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/promotion/a;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/PromotionController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isSupport()Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPromotionEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object v2

    const-string v3, "PersonalizedPromotion"

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->isSupport(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$showNewsPromotion$1(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "quick_access_page_news_feed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showPromotionIfNecessary$0(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "quick_access_page_news_feed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static onLoadFinished(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getInstance()Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->visit(Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->showPromotionIfNecessary(Landroid/app/Activity;)V

    return-void
.end method

.method private printLog()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPromotionEnabled()Z

    move-result p0

    const-string v0, "disable"

    const-string v1, "enable"

    if-eqz p0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPromotionInstantMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getPromotionProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Debug mode   : "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "PromotionController"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Profile      : "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Instant mode : "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static resetHistory()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getInstance()Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->resetModelHistory()V

    return-void
.end method

.method private resetModelHistory()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->reset()V

    return-void
.end method

.method public static showNewsPromotion(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getInstance()Lcom/sec/android/app/sbrowser/promotion/PromotionController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/Category;->NEWS:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    new-instance v2, Lcom/sec/android/app/sbrowser/promotion/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/promotion/a;-><init>(I)V

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->showPromotionIfNecessary(Lcom/sec/android/app/sbrowser/promotion/model/Category;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/promotion/PromotionController$Condition;)Z

    return-void
.end method

.method private showPromotionIfNecessary(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->getPreferredCategoryList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/promotion/model/Category;

    new-instance v2, Lcom/sec/android/app/sbrowser/promotion/a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/promotion/a;-><init>(I)V

    invoke-direct {p0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->showPromotionIfNecessary(Lcom/sec/android/app/sbrowser/promotion/model/Category;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/promotion/PromotionController$Condition;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method

.method private showPromotionIfNecessary(Lcom/sec/android/app/sbrowser/promotion/model/Category;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/promotion/PromotionController$Condition;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/model/Category;->UNKNOWN:Lcom/sec/android/app/sbrowser/promotion/model/Category;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->isPrefer(Lcom/sec/android/app/sbrowser/promotion/model/Category;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->getValidItemList(Lcom/sec/android/app/sbrowser/promotion/model/Category;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/sec/android/app/sbrowser/promotion/PromotionController$Condition;->satisfy(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionExecutorCreator;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->precondition(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->updatePromotionResult(Lcom/sec/android/app/sbrowser/promotion/model/Category;Ljava/lang/String;Lcom/sec/android/app/sbrowser/promotion/model/PromotionResult;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mExecutorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getResultInterface()Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    move-result-object p1

    invoke-interface {v2, p2, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;->execute(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mExecutorList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_1
    return v1
.end method

.method private visit(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->hasValidItem()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getAnalyzer()Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;->request(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;->visit(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAnalyzer()Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mAnalyzer:Lcom/sec/android/app/sbrowser/promotion/context_analyzer/IContextAnalyzer;

    return-object p0
.end method

.method public getExecutorList()Ljava/util/ArrayList;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mExecutorList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getModel()Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mModel:Lcom/sec/android/app/sbrowser/promotion/model/PromotionModel;

    return-object p0
.end method

.method public getResultInterface()Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/promotion/PromotionController$1;-><init>(Lcom/sec/android/app/sbrowser/promotion/PromotionController;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    return-object p0
.end method
