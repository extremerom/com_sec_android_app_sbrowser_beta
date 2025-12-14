.class public Lorg/chromium/components/signin/AccountManagerFacadeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountManagerFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FEATURE_IS_USM_ACCOUNT_KEY:Ljava/lang/String; = "service_usm"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final MAXIMUM_RETRIES:I = 0x5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAccountRestrictionPatterns:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAccountsPromise:Lorg/chromium/base/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Promise<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/AccountInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAllAccounts:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCoreAccountInfosPromise:Lorg/chromium/base/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Promise<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/CoreAccountInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDelegate:Lorg/chromium/components/signin/AccountManagerDelegate;

.field private mDidAccountFetchSucceed:Z

.field private mDisallowTokenRequestsForTesting:Z

.field private mFetchGaiaIdsTask:Lorg/chromium/base/task/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/task/AsyncTask<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/GaiaId;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNumberOfRetries:I

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/signin/AccountsChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingTokenRequests:I

.field private mTokenRequestsCompletedCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mObservers:Lorg/chromium/base/ObserverList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAllAccounts:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountRestrictionPatterns:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mCoreAccountInfosPromise:Lorg/chromium/base/Promise;

    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountsPromise:Lorg/chromium/base/Promise;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mDelegate:Lorg/chromium/components/signin/AccountManagerDelegate;

    new-instance v0, Lorg/chromium/components/signin/b;

    invoke-direct {v0, p0}, Lorg/chromium/components/signin/b;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    invoke-interface {p1, v0}, Lorg/chromium/components/signin/AccountManagerDelegate;->attachAccountsChangeObserver(Lorg/chromium/components/signin/AccountsChangeObserver;)V

    new-instance p1, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;

    new-instance v0, Lorg/chromium/components/signin/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lorg/chromium/components/signin/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0}, Lorg/chromium/components/signin/AccountRestrictionPatternReceiver;-><init>(Lorg/chromium/base/Callback;)V

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->getAccounts()Lorg/chromium/base/Promise;

    move-result-object p1

    new-instance v0, Lorg/chromium/components/search_engines/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/chromium/components/search_engines/a;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;)V

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->onAccountsUpdated()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->lambda$new$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->onAccountsUpdated()V

    return-void
.end method

.method public static synthetic c(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->onAccountRestrictionPatternsUpdated(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic d(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/Promise;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountsPromise:Lorg/chromium/base/Promise;

    return-object p0
.end method

.method public static bridge synthetic e(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAllAccounts:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic f(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/Promise;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mCoreAccountInfosPromise:Lorg/chromium/base/Promise;

    return-object p0
.end method

.method private fetchGaiaIdsAndUpdateCoreAccountInfos()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mFetchGaiaIdsTask:Lorg/chromium/base/task/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/base/task/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mFetchGaiaIdsTask:Lorg/chromium/base/task/AsyncTask;

    :cond_0
    new-instance v0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->getFilteredAccountEmails()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$GetAccountAsyncTask;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Ljava/util/List;)V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mFetchGaiaIdsTask:Lorg/chromium/base/task/AsyncTask;

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mDelegate:Lorg/chromium/components/signin/AccountManagerDelegate;

    return-object p0
.end method

.method public static getAndroidCapabilityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "accountcapabilities/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getFilteredAccountEmails()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountRestrictionPatterns:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAllAccounts:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/components/signin/PatternMatcher;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v2}, Lorg/chromium/components/signin/PatternMatcher;->matches(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static bridge synthetic h(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mDidAccountFetchSucceed:Z

    return p0
.end method

.method public static bridge synthetic i(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mNumberOfRetries:I

    return p0
.end method

.method public static bridge synthetic j(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/base/ObserverList;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mObservers:Lorg/chromium/base/ObserverList;

    return-object p0
.end method

.method public static bridge synthetic k(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/base/Promise;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountsPromise:Lorg/chromium/base/Promise;

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/base/Promise;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mCoreAccountInfosPromise:Lorg/chromium/base/Promise;

    return-void
.end method

.method private static synthetic lambda$new$0(Ljava/util/List;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 v0, 0x32

    const-string v1, "Signin.AndroidNumberOfDeviceAccounts"

    invoke-static {v1, p0, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordExactLinearHistogram(Ljava/lang/String;II)V

    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mDidAccountFetchSucceed:Z

    return-void
.end method

.method public static bridge synthetic n(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mFetchGaiaIdsTask:Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public static bridge synthetic o(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mNumberOfRetries:I

    return-void
.end method

.method private onAccountRestrictionPatternsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/PatternMatcher;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountRestrictionPatterns:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->updateAccounts()V

    return-void
.end method

.method private onAccountsUpdated()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;

    invoke-direct {v0, p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$6;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public static bridge synthetic p(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->fetchGaiaIdsAndUpdateCoreAccountInfos()V

    return-void
.end method

.method private pendingRequestFinished()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mPendingTokenRequests:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mPendingTokenRequests:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mTokenRequestsCompletedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mTokenRequestsCompletedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private pendingRequestStarted()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mPendingTokenRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mPendingTokenRequests:I

    return-void
.end method

.method public static bridge synthetic q(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->onAccountsUpdated()V

    return-void
.end method

.method public static bridge synthetic r(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->pendingRequestFinished()V

    return-void
.end method

.method public static bridge synthetic s(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->shouldRetry()Z

    move-result p0

    return p0
.end method

.method private shouldRetry()Z
    .locals 2

    iget v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mNumberOfRetries:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mNumberOfRetries:I

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic t(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->updateAccounts()V

    return-void
.end method

.method private updateAccounts()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAllAccounts:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountRestrictionPatterns:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->fetchGaiaIdsAndUpdateCoreAccountInfos()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkChildAccountStatus(Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$3;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/components/signin/AccountManagerFacade$ChildAccountStatusListener;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public getAccessToken(Lorg/chromium/components/signin/base/CoreAccountInfo;Ljava/lang/String;Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mDisallowTokenRequestsForTesting:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p3, p0}, Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;->onGetTokenFailure(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->pendingRequestStarted()V

    new-instance v0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$1;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/components/signin/base/CoreAccountInfo;Ljava/lang/String;Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;)V

    invoke-static {v0}, Lorg/chromium/components/signin/ConnectionRetry;->runAuthTask(Lorg/chromium/components/signin/ConnectionRetry$AuthTask;)V

    return-void
.end method

.method public getAccountCapabilities(Lorg/chromium/components/signin/base/CoreAccountInfo;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/components/signin/base/CoreAccountInfo;",
            ")",
            "Lorg/chromium/base/Promise<",
            "Lorg/chromium/components/signin/base/AccountCapabilities;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    new-instance v1, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;

    invoke-direct {v1, p0, p1, v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$5;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Lorg/chromium/components/signin/base/CoreAccountInfo;Lorg/chromium/base/Promise;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-object v0
.end method

.method public getAccounts()Lorg/chromium/base/Promise;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Promise<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/AccountInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mAccountsPromise:Lorg/chromium/base/Promise;

    return-object p0
.end method

.method public getCoreAccountInfos()Lorg/chromium/base/Promise;
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Promise<",
            "Ljava/util/List<",
            "Lorg/chromium/components/signin/base/CoreAccountInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mCoreAccountInfosPromise:Lorg/chromium/base/Promise;

    return-object p0
.end method

.method public invalidateAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->mDisallowTokenRequestsForTesting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;-><init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/chromium/components/signin/ConnectionRetry;->runAuthTask(Lorg/chromium/components/signin/ConnectionRetry$AuthTask;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
