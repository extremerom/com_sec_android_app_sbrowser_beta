.class public Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;,
        Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;,
        Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;,
        Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;,
        Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriFailureListener;,
        Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriSuccessListener;
    }
.end annotation


# instance fields
.field private mApiHandler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

.field private mConnectStatus:I

.field private mConnectTimeoutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

.field private mLookupTimeoutCount:I

.field private mPendingQueries:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mReconnectCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mPendingQueries:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mReconnectCount:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->lambda$connect$0(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mApiHandler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private connect()V
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;I)V

    new-instance v2, Lcom/sec/android/app/sbrowser/safe_browsing/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/c;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    sget-object v2, La5/b;->d:La5/b;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mContext:Landroid/content/Context;

    sget v4, La5/c;->a:I

    invoke-virtual {v2, v4, v3}, La5/c;->b(ILandroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mContext:Landroid/content/Context;

    new-instance v3, LN5/d;

    new-instance v4, Lc5/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    sget-object v6, LN5/b;->a:Lb5/g;

    invoke-direct {v3, v2, v6, v5, v4}, Lb5/j;-><init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v2

    const/16 v4, 0x106a

    iput v4, v2, LG6/f;->c:I

    new-instance v4, LN5/f;

    invoke-direct {v4, v3}, LN5/f;-><init>(LN5/d;)V

    iput-object v4, v2, LG6/f;->d:Ljava/lang/Object;

    invoke-virtual {v2}, LG6/f;->a()Lc5/L;

    move-result-object v2

    invoke-virtual {v3, v2}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    new-instance v4, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnSuccessListener;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;I)V

    invoke-virtual {v2, v3, v4}, LR5/h;->f(Ljava/util/concurrent/Executor;LR5/e;)LR5/p;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    invoke-virtual {v2, v3, v0}, LR5/h;->d(Ljava/util/concurrent/Executor;LR5/d;)LR5/p;

    iput v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private convertToTerraceSafeBrowsingThreatType(I)I
    .locals 0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x5

    if-ne p1, p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    return p0
.end method

.method private fakeUriLookupDone(Ljava/lang/String;J)V
    .locals 9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mApiHandler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->uriLookupDone(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Ljava/lang/String;ZJILjava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mPendingQueries:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mReconnectCount:I

    return-void
.end method

.method private initOnThread(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->connect()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mApiHandler:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->fakeUriLookupDone(Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->initOnThread(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->startUriLookupOnThread(JLjava/lang/String;[I)V

    return-void
.end method

.method private static synthetic lambda$connect$0(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;)V
    .locals 1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$SafetyNetInitOnFailureListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Ljava/lang/String;ZJILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->uriLookupDone(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Ljava/lang/String;ZJILjava/lang/String;I)V

    return-void
.end method

.method private startUriLookupOnThread(JLjava/lang/String;[I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper;->getSafetyNetApiKeys()Ljava/lang/String;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$LookupUriTask;->lookup(JLjava/lang/String;[I)V

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->fakeUriLookupDone(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mPendingQueries:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;-><init>(JLjava/lang/String;[I)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->fakeUriLookupDone(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method private uriLookupDone(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;Ljava/lang/String;ZJILjava/lang/String;I)V
    .locals 8

    move-object v0, p0

    move/from16 v1, p8

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->convertToTerraceSafeBrowsingThreatType(I)I

    move-result v7

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-wide v3, p4

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->onUriLookupDone(Ljava/lang/String;ZJILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public decreaseTimeoutCount()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    :cond_0
    return-void
.end method

.method public disable()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mContext:Landroid/content/Context;

    new-instance v1, LN5/d;

    new-instance v2, Lc5/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    sget-object v4, LN5/b;->a:Lb5/g;

    invoke-direct {v1, v0, v4, v3, v2}, Lb5/j;-><init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V

    invoke-static {}, Lc5/u;->a()LG6/f;

    move-result-object v0

    const/16 v2, 0x106b

    iput v2, v0, LG6/f;->c:I

    sget-object v2, LN5/f;->b:LN5/f;

    iput-object v2, v0, LG6/f;->d:Ljava/lang/Object;

    invoke-virtual {v0}, LG6/f;->a()Lc5/L;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb5/j;->doRead(Lc5/u;)LR5/h;

    :cond_0
    const/16 v0, -0x64

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    return-void
.end method

.method public increaseTimeoutCount()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->disable()V

    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public reconnect()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mReconnectCount:I

    const-string v1, "safeBrowsingApi"

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const-string v0, "reconnect : MAX_RECONNECT_COUNT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->disable()V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mLookupTimeoutCount:I

    if-lt v0, v2, :cond_1

    const-string v0, "reconnect : MAX_TIMEOUT_COUNT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->disable()V

    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mConnectStatus:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->connect()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mReconnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mReconnectCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "reconnect start : count="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mReconnectCount:I

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public startUriLookup(JLjava/lang/String;[I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;->mExecutor:Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;

    new-instance v7, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$2;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate;JLjava/lang/String;[I)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/sbrowser/safe_browsing/SafetyNetApiDelegate$ApiExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
