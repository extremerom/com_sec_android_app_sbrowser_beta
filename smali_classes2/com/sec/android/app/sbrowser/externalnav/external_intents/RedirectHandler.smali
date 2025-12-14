.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

.field private mLastCommittedEntryIndexBeforeStartingNavigation:I

.field private mLastUserInteractionTimeMillis:J

.field private mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    return-void
.end method

.method public static create()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;-><init>()V

    return-object v0
.end method

.method private static isIntentToSBrowser(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.browser.application_id"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method private resetNavigationChainState(IZIZZ)V
    .locals 11

    move-object v8, p0

    move v0, p1

    and-int/lit16 v1, v0, 0xff

    const/high16 v2, 0x8000000

    and-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    if-eqz v0, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    sget-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resetNavigationChainState has mIntentState ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "), isFromIntent : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RedirectHandler"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v0, 0x8

    if-ne v1, v0, :cond_3

    move v4, v9

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    if-ne v1, v9, :cond_4

    move v5, v9

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    const/4 v0, 0x7

    if-ne v1, v0, :cond_5

    move v6, v9

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    if-nez v7, :cond_6

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    :cond_6
    new-instance v10, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p5

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;ZZZZZZ)V

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    xor-int/lit8 v1, p4, 0x1

    invoke-direct {v0, p0, v1, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;)V

    iput-object v0, v8, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    move v0, p3

    iput v0, v8, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    return-void
.end method

.method private updateNavigationChainState(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mIsOnFirstLoadInChain:Z

    const/high16 v0, 0x1000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mUsedBackOrForward:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    return-void
.end method

.method public currentRealtime()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInitialNavigationState()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mInitialNavigationState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

    return-object p0
.end method

.method public getLastCommittedEntryIndexBeforeStartingNavigation()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mLastCommittedEntryIndexBeforeStartingNavigation:I

    return p0
.end method

.method public hasNewResolver(Ljava/util/List;Ljava/util/function/Function;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_0
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mInitialIntent:Landroid/content/Intent;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mCachedResolvers:Ljava/util/HashSet;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mCachedResolvers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-le p2, v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mCachedResolvers:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public hasUserStartedNonInitialNavigation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mHasUserStartedNonInitialNavigation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public intentPrefersToStayInSBrowser()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mPreferToStayInSBrowser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFromCustomTabIntent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mIsCustomTabIntent:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavigationChainExpired()Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->currentRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mNavigationChainStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnNavigation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnNoninitialLoadForIntentNavigationChain()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mInitialNavigationState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromIntent:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mIsOnFirstLoadInChain:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeLogExternalRedirectBlockedWithMissingGesture()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mInitialNavigationState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isRendererInitiated:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->hasUserGesture:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mLastUserInteractionTimeMillis:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "External navigation blocked due to missing gesture. Last input was "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms ago."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RedirectHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public navigationChainPerformedHiddenCrossFrameNavigation()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mPerformedHiddenCrossFrameNavigation:Z

    return p0
.end method

.method public navigationChainUsedBackOrForward()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mUsedBackOrForward:Z

    return p0
.end method

.method public setPerformedHiddenCrossFrameNavigation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mPerformedHiddenCrossFrameNavigation:Z

    return-void
.end method

.method public setShouldNotOverrideUrlLoadingOnCurrentRedirectChain()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mShouldNotOverrideUrlLoadingOnCurrentNavigationChain:Z

    return-void
.end method

.method public shouldNotOverrideUrlLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mShouldNotOverrideUrlLoadingOnCurrentNavigationChain:Z

    return p0
.end method

.method public updateIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.SEND"

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isIntentToSBrowser(Landroid/content/Intent;)Z

    move-result v1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/custom_tab_intent/CustomTabIntentUtil;->isCustomTabIntent(Landroid/content/Intent;)Z

    move-result v3

    const-string v4, "android.support.customtabs.extra.SEND_TO_EXTERNAL_HANDLER"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    move v1, v5

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Intent.ACTION_SEND"

    const-string v4, "RedirectHandler"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromSendIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v2, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad URI : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6, v4}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sanitizeQueryIntentActivitiesIntent(Landroid/content/Intent;)V

    :goto_1
    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    invoke-direct {v0, p1, v1, v3, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;-><init>(Landroid/content/Intent;ZZZ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    return-void

    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    return-void
.end method

.method public updateNewUrlLoading(IZZJIZZ)V
    .locals 6

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mLastUserInteractionTimeMillis:J

    sget-boolean p4, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->DEBUG:Z

    if-eqz p4, :cond_0

    const-string p4, "updateNewUrlLoading isRedirect : "

    const-string p5, "RedirectHandler"

    invoke-static {p4, p5, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 p4, 0x1

    if-nez p2, :cond_2

    if-eqz p8, :cond_1

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, p4

    :goto_1
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    if-eqz p5, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->updateNavigationChainState(I)V

    goto :goto_2

    :cond_3
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p6

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->resetNavigationChainState(IZIZZ)V

    :goto_2
    const/high16 p2, 0x1000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mNavigationChainState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$NavigationChainState;->mUsedBackOrForward:Z

    :cond_4
    return-void
.end method

.method public wasTaskStartedByExternalIntent()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->mIntentState:Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$IntentState;->mExternalIntentStartedTask:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
