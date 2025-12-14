.class public Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResultType;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingAsyncActionType;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;,
        Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$LazySupplier;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final FALLBACK_VALID_SCHEMES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sAllowIntentsToSelfForTesting:Z


# instance fields
.field private final mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

.field private mIncognitoAlertDialog:Lm/l;

.field private mUrlLinkify:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;

.field private mUserConsentDialog:Lm/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isEngOrDebugBuild()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    const-string v0, "http"

    const-string v1, "https"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/CollectionUtil;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->FALLBACK_VALID_SCHEMES:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getAvailableContext(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUrlLinkify:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$startIncognitoIntent$0(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showExternalAppIncognitoWarning$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private blockExternalNavFromBackgroundTab(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isBackgroundTabNavigation()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private blockExternalNavWhileBackgrounded(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isApplicationMustBeInForeground()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->isApplicationInForeground(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showExternalAppIncognitoWarning$3(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;)V

    return-void
.end method

.method private countSpecializedHandlers(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getSpecializedHandlersWithFilter(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showMultipleAppDialog$13(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private deviceCanHandleIntent(Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private doStartActivity(Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExtNavHandler"

    const-string v0, "startActivity"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showAskContinueDialog$11(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private externalIntentRequestsDisabledForUrl(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 3

    const-string v0, "disable-external-intent-requests"

    invoke-static {v0}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ExtNavHandler"

    if-eqz v0, :cond_0

    const-string p0, "External intent handling is disabled by a command-line flag."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->shouldDisableExternalIntentRequestsForUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Delegate disables external intent requests for URL."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showExternalAppIncognitoWarning$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private fallBackToHandlingInApp()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExtNavHandler"

    const-string v0, "No specialized handler for URL"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showMultipleAppDialog$15(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getAvailableContext(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)Landroid/content/Context;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getAvailableContext(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultSmsPackageName(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getDefaultSmsPackageNameFromSystem()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getDefaultSmsPackageNameFromSystem()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInstalledBrowserPackages()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->queryAllWebBrowsersInfo()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getReferrerUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getLastCommittedEntryIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/sec/terrace/Terrace;->getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    move-result-object p1

    if-nez p1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResolveInfosForWebApks(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isFromIntent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->shouldLaunchWebApksOnInitialIntent()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->getIncludingNonDefaultResolveInfos()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getSpecializedHandlers(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getSpecializedHandlersWithFilter(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$needRedirectFallBackUrlInApp$6(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleExternalIncognitoIntent(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startIncognitoIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    const-string p1, "ExtNavHandler"

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Incognito navigation out"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_1
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "Failed to show incognito alert dialog."

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private handleFallbackUrl(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isOnNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->shouldNotOverrideUrlLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->isIntentToInstantApp(Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "ExtNavHandler"

    if-eqz v0, :cond_1

    const-string v0, "Intent is going to open an Instant App"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p4, :cond_5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isIncomingIntentRedirect(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result p4

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldBlockAllExternalAppLaunches(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isIncognito()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x1

    :try_start_0
    invoke-static {p3, p4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sanitizeQueryIntentActivitiesIntent(Landroid/content/Intent;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;

    invoke-direct {v0, p0, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isAlreadyInTargetWebApk(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0, p4, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->launchWebApkIfSoleIntentHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse fallback url as intent: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->maybeGetPlayStoreAppIdAndReferrer(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p4

    if-eqz p4, :cond_5

    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    :goto_0
    iget-object p4, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sendIntentToMarket(Landroid/content/Intent;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Context is not allowed to launch an external app."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isOnNavigation()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->setShouldNotOverrideUrlLoadingOnCurrentRedirectChain()V

    :cond_6
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "redirecting to fallback URL : "

    invoke-virtual {p0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {p3, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNavigateTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private handleFileUrlPermissions(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/MimeTypeUtils;->getMimeTypeForUrl(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/MimeTypeUtils;->getPermissionNameForMimeType(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldRequestFileAccess(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->requestFilePermissions(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private handleIncognitoIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/util/List;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->willAppHandleIntent(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolveInfoContainsSelf(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->hasIntentScheme(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p4, p3

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p2, p1, p4, p5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleExternalIncognitoIntent(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleFallbackUrl(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private handleUnresolvableIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZZ)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 0

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleWithMarketIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p1, "ExtNavHandler"

    if-nez p4, :cond_3

    const-string p0, "handleUnresolvableIntent - NO_OVERRIDE"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Activity not found in ultra power saving mode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    const p2, 0x7f14005b

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->showSnackbar(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Activity not found in emergency mode"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    const p2, 0x7f1400e2

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->showSnackbar(I)V

    :cond_5
    :goto_0
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "Could not find an external activity to use"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private handleWithMarketIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    const-string v0, "market_referrer"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p1, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sendIntentToMarket(Landroid/content/Intent;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private handleWtaiProtocol(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wtai://wp/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "%20"

    const-string v3, " "

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, ""

    move-object v2, p1

    move-object p1, v0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "phone"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    return v4
.end method

.method private hasContentScheme(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Z)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "content:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private hasFileSchemeInIntentURI(Landroid/content/Intent;Z)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "file:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private hasInternalScheme(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Z)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "about:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "chrome:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "chrome-native:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "devtools:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "internet-native://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showMultipleAppDialog$14(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private ignoreBackForwardNav(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getPageTransition()I

    move-result p0

    const/high16 p1, 0x1000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private intentMatchesNonDefaultWebApk(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isFromIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->shouldLaunchWebApksOnInitialIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->pickWebApkIfSoleIntentHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExtNavHandler"

    const-string p1, "Matches possibly non-default WebApk"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isAlreadyInTargetWebApk(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->nativeClientPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getResolveInfosForWebApks(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ExtNavHandler"

    const-string p1, "Already in WebAPK"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private isDirectFormSubmit(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRedirect()Z

    move-result p2

    if-eqz p2, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getPageTransition()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "ExtNavHandler"

    const-string p1, "Direct form submission, not a redirect"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    :cond_3
    return p0
.end method

.method private isDirectIntentNavigation(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isFromIntent()Z

    move-result p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    if-eqz p3, :cond_2

    return p0

    :cond_2
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "ExtNavHandler"

    const-string p1, "Initial intent navigation."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static isEngOrDebugBuild()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v0

    return v0
.end method

.method private isHiddenCrossFrameRenavigation(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "ExtNavHandler"

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->navigationChainPerformedHiddenCrossFrameNavigation()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "Navigation chain used cross-frame re-navigation."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isInitialNavigationInFrame()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isHiddenCrossFrameNavigation()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRedirect()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Cross-frame re-navigation."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->setPerformedHiddenCrossFrameNavigation()V

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2
.end method

.method private static isIncomingIntentRedirect(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isOnNoninitialLoadForIntentNavigationChain()Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isFromIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRedirect()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isInsecureIntentToOtherBrowser(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Z)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    if-nez p5, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    sget-object p5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p3, p5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_6

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getInstalledBrowserPackages()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p2, :cond_7

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_9

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_0
    return v0
.end method

.method private isInternalPdfDownload(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->isPdfDownload(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLinkFromSBrowserInternalPage(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p0

    const-string v1, "internet://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p0

    const-string v1, "internet-native://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string v1, "http://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isNavigationToSelf(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Z)Z
    .locals 3

    sget-boolean p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sAllowIntentsToSelfForTesting:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolveInfoContainsSelf(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    iget-object p1, p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "sasdk://account.samsunginternet/signin"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "sasdk://account.samsunginternet/confirmpassword"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 p4, 0x1

    const-string v1, "ExtNavHandler"

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "Subframe navigation to self."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return p4

    :cond_7
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolvesToChooser(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "Subframe navigation to chooser including self."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return p4

    :cond_9
    return v0
.end method

.method public static isPackageSpecializedHandler(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getSpecializedHandlersWithFilter(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isSerpReferrer(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getReferrerUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isGoogleSearchUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isSupportedWtaiProtocol(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isValidForIntentFallbackNavigation(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->FALLBACK_VALID_SCHEMES:Ljava/util/HashSet;

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isValidForIntentFallbackNavigation URISyntaxException is occured"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtNavHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isYoutubePairingCode(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".*youtube\\.com(\\/.*)?\\?(.+&)?pairingCode=[^&].+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showMultipleAppDialog$12(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$shouldKeepIntentRedirectInApp$5(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showAskContinueDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$needRedirectFallBackUrlInApp$6(Landroid/content/Intent;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$shouldKeepIntentRedirectInApp$5(Landroid/content/Intent;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$shouldOverrideUrlLoadingInternal$7(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->loadUrl(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$showAskContinueDialog$10(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    return-void
.end method

.method private synthetic lambda$showAskContinueDialog$11(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    return-void
.end method

.method private static synthetic lambda$showAskContinueDialog$8(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showAskContinueDialog$9(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forExternalIntentLaunched(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showExternalAppIncognitoWarning$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x1

    invoke-virtual {p1, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->onUserDecidedWhetherToLaunchIncognitoIntent(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sendSALogging(Z)V

    return-void
.end method

.method private synthetic lambda$showExternalAppIncognitoWarning$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x1

    invoke-virtual {p1, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->onUserDecidedWhetherToLaunchIncognitoIntent(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sendSALogging(Z)V

    return-void
.end method

.method private synthetic lambda$showExternalAppIncognitoWarning$3(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;)V
    .locals 6

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p6

    if-eqz p6, :cond_0

    return-void

    :cond_0
    const/4 p6, 0x1

    invoke-virtual {p1, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->onUserDecidedWhetherToLaunchIncognitoIntent(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showExternalAppIncognitoWarning$4(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;

    return-void
.end method

.method private static synthetic lambda$showMultipleAppDialog$12(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showMultipleAppDialog$13(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forExternalIntentLaunched(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showMultipleAppDialog$14(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    return-void
.end method

.method private synthetic lambda$showMultipleAppDialog$15(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    return-void
.end method

.method private synthetic lambda$startIncognitoIntent$0(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/Boolean;)V
    .locals 6

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->onUserDecidedWhetherToLaunchIncognitoIntent(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private launchWebApkIfSoleIntentHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 1

    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->pickWebApkIfSoleIntentHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p0, v0, p3, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "launchWebApkIfSoleIntentHandler ActivityNotFoundException is occured: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "ExtNavHandler"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->A(Landroid/content/ActivityNotFoundException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return p3
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showAskContinueDialog$9(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private maybeAskToLaunchApp(ZLandroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 6

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    const-string p4, "ExtNavHandler"

    if-eqz p1, :cond_6

    iget-object p5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolvesToChooser(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-boolean p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "Message resolves to multiple apps."

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p2, p6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->showMultipleAppDialog(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-boolean p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p3, "applicationInfo packageName : "

    invoke-static {p3, v3, p4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p1, :cond_5

    const-string p1, "applicationInfo appName : "

    invoke-static {p1, v4, p4}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, p0

    move-object v1, p2

    move-object v2, p6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->showAskContinueDialog(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :catch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "Message doesn\'t resolve to any app."

    invoke-static {p4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private maybeGetPlayStoreAppIdAndReferrer(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->isPlayStoreUrl(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/util/Pair;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeSetSmsPackage(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "sms"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getDefaultSmsPackageName(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$shouldOverrideUrlLoadingInternal$7(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    return-void
.end method

.method private navigationChainBlocksExternalNavigation(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Z)Z
    .locals 8

    sget-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    const-string v1, "ExtNavHandler"

    if-eqz v0, :cond_0

    const-string v2, "navigationChainBlocksExternalNavigation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->getInitialNavigationState()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->navigationChainUsedBackOrForward()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    if-eqz v0, :cond_2

    const-string p0, "Navigation chain used back or forward."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v6

    :cond_3
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->shouldNotOverrideUrlLoading()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.samsung.android.email.provider"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_4

    const-string p0, "Navigation chain has blocked app launching."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v6

    :cond_5
    iget-boolean v5, v4, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromReload:Z

    if-eqz v5, :cond_7

    if-eqz v0, :cond_6

    const-string p0, "Navigation chain is from a tab restore or refresh."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v6

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRendererInitiated()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isFromIntent()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->shouldEmbedderInitiatedNavigationsStayInBrowser()Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, v4, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isFromTyping:Z

    if-eqz v5, :cond_9

    :cond_8
    const-string p0, "Browser initiated navigation chain."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0, p2, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->isIntentForTrustedCallingApp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isNavigationChainExpired()Z

    move-result p0

    if-eqz p0, :cond_c

    if-eqz v0, :cond_b

    const-string p0, "Navigation chain expired (a page waited more than %d seconds to redirect).15000"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v6

    :cond_c
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->intentPrefersToStayInSBrowser()Z

    move-result p0

    if-eqz p0, :cond_e

    if-nez p4, :cond_e

    if-eqz v0, :cond_d

    const-string p0, "Launching intent explicitly targeted the browser."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v6

    :cond_e
    iget-boolean p0, v4, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->isRendererInitiated:Z

    if-eqz p0, :cond_11

    iget-boolean p2, v4, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler$InitialNavigationState;->hasUserGesture:Z

    if-nez p2, :cond_11

    if-eqz p4, :cond_f

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->maybeLogExternalRedirectBlockedWithMissingGesture()V

    :cond_f
    if-eqz v0, :cond_10

    const-string p0, "Navigation chain started without a gesture."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v6

    :cond_11
    if-eqz p0, :cond_13

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationConfigManager;->checkDeepLinkBlockList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13

    if-eqz v0, :cond_12

    const-string p0, "[CN] Navigation chain started"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v6

    :cond_13
    return v3
.end method

.method private needRedirectFallBackUrlInApp(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;ZLjava/util/List;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isFromCustomTabIntent()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->hasNewResolver(Ljava/util/List;Ljava/util/function/Function;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showExternalAppIncognitoWarning$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private onUserDecidedWhetherToLaunchIncognitoIntent(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p0, p3, p5, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forExternalIntentLaunched(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    :cond_2
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleFallbackUrl(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNoAction()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRequiredAsyncActionTakenCallback()Lcom/sec/terrace/base/TerraceRequiredCallback;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getTargetUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;->forNavigate(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams$AsyncActionTakenParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/terrace/base/TerraceRequiredCallback;->onResult(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->lambda$showAskContinueDialog$10(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static parseWtaiMcProtocol(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ExtNavHandler"

    const-string v1, "wtai:// link handled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private pickWebApkIfSoleIntentHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getResolveInfosForWebApks(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getSpecializedHandlers(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->isValidWebApk(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private prepareExternalIntent(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.android.browser.application_id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isOpenInNewTab()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "create_new_tab"

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x4000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->maybeSetPendingReferrer(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isIncognito()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p3, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->maybeSetPendingIncognitoUrl(Landroid/content/Intent;)V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->hasUserGesture()Z

    move-result p3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRendererInitiated()Z

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->maybeSetRequestMetadata(Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private preventDirectInstantAppsIntent(ZZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private printDebugShouldOverrideUrlLoadingResultType(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const-string p0, "NO_OVERRIDE"

    goto :goto_0

    :cond_0
    const-string p0, "OVERRIDE_WITH_ASYNC_ACTION"

    goto :goto_0

    :cond_1
    const-string p0, "OVERRIDE_WITH_NAVIGATE_TAB"

    goto :goto_0

    :cond_2
    const-string p0, "OVERRIDE_WITH_EXTERNAL_INTENT"

    :goto_0
    const-string p1, "shouldOverrideUrlLoading result: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExtNavHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    return-object p0
.end method

.method private queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic r(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;)Ljava/util/List;
    .locals 0

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private requestFilePermissions(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$1;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)V

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    return-void
.end method

.method private resolversSubsetOf(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/ComponentName;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private resolvesToChooser(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z
    .locals 0
    .param p1    # Landroid/content/pm/ResolveInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    filled-new-array {p1}, [Landroid/content/pm/ResolveInfo;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolversSubsetOf(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static sanitizeQueryIntentActivitiesIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, 0x3c083810

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-void
.end method

.method private sendIntentToMarket(Landroid/content/Intent;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "market"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "details"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "referrer"

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.BROWSABLE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.vending"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->deviceCanHandleIntent(Landroid/content/Intent;)Z

    move-result p1

    const-string v0, "ExtNavHandler"

    if-nez p1, :cond_2

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "Play Store not installed"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isIncognito()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-direct {p0, p3, p2, p4, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startIncognitoIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "Failed to show incognito alert dialog."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_4
    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "Incognito intent to Play Store."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p0, p2, v1, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "Intent to Play Store."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private sendSALogging(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "2535"

    goto :goto_0

    :cond_0
    const-string p0, "2534"

    :goto_0
    const-string p1, "202"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private shouldAvoidShowingDisambiguationPrompt(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->shouldAvoidDisambiguationDialog(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolvesToChooser(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z

    move-result p0

    sget-boolean p1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    const-string p1, "ExtNavHandler"

    const-string p2, "Avoiding disambiguation dialog."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method private shouldBlockAllExternalAppLaunches(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldBlockSubframeAppLaunches(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->blockExternalNavWhileBackgrounded(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->blockExternalNavFromBackgroundTab(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->ignoreBackForwardNav(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

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

.method private shouldBlockSubframeAppLaunches(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isMainFrame()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->hasUserGesture()Z

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExtNavHandler"

    const-string p1, "Subframe navigation without user gesture."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private shouldKeepIntentRedirectInApp(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;ZLjava/util/List;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p4, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->isFromCustomTabIntent()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/c;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->hasNewResolver(Ljava/util/List;Ljava/util/function/Function;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldOverrideUrlLoadingInternal(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 20
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-object/from16 v0, p4

    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->sanitizeQueryIntentActivitiesIntent(Landroid/content/Intent;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;->set(Z)V

    invoke-direct {v6, v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->maybeSetSmsPackage(Landroid/content/Intent;)Z

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isIncomingIntentRedirect(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    sget-boolean v3, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    const-string v4, "ExtNavHandler"

    if-eqz v3, :cond_0

    const-string v5, "isExternalProtocol : "

    invoke-static {v5, v4, v10}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->hasIntentScheme(Ljava/lang/String;)Z

    move-result v5

    const/4 v12, 0x1

    if-eqz v5, :cond_1

    invoke-static {v11}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v13, v12

    goto :goto_0

    :cond_1
    move v13, v9

    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isHiddenCrossFrameRenavigation(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {v6, v8, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldBlockAllExternalAppLaunches(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleFileUrlPermissions(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v9}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->externalIntentRequestsDisabledForUrl(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isLinkFromSBrowserInternalPage(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-direct {v6, v8, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isDirectFormSubmit(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v14, "intent:"

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v15, "android-app:"

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    move v5, v9

    goto :goto_2

    :cond_9
    :goto_1
    move v5, v12

    :goto_2
    invoke-direct {v6, v8, v7, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->hasInternalScheme(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Z)Z

    move-result v15

    if-nez v15, :cond_2e

    invoke-direct {v6, v8, v7, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->hasContentScheme(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Z)Z

    move-result v15

    if-nez v15, :cond_2e

    invoke-direct {v6, v7, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->hasFileSchemeInIntentURI(Landroid/content/Intent;Z)Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_a

    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isYoutubePairingCode(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldStayInWebapp(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isIncognito()Z

    move-result v5

    invoke-virtual {v6, v5, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldStayInIncognito(ZZ)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-direct {v6, v10, v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isInternalPdfDownload(ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v15, "wtai://wp/sd;"

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleWtaiProtocol(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v15, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;

    invoke-direct {v15, v6, v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;)V

    invoke-direct {v6, v8, v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->intentMatchesNonDefaultWebApk(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z

    move-result v5

    invoke-direct {v6, v8, v5, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isDirectIntentNavigation(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;ZZ)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-direct {v6, v8, v7, v15, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->navigationChainBlocksExternalNavigation(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Z)Z

    move-result v16

    if-eqz v16, :cond_12

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {v0, v12}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;->set(Z)V

    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_13

    goto/16 :goto_9

    :cond_13
    new-instance v9, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;

    invoke-direct {v9, v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;-><init>(Landroid/content/Intent;)V

    invoke-direct {v6, v8, v15, v9, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isNavigationToSelf(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Z)Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-static {v11, v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNavigateTab(Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-direct {v6, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->countSpecializedHandlers(Ljava/util/List;)I

    move-result v18

    if-lez v18, :cond_15

    move/from16 v18, v12

    goto :goto_3

    :cond_15
    const/16 v18, 0x0

    :goto_3
    if-eqz v1, :cond_1b

    iget-object v12, v6, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v12}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_17

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object v12

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v19

    if-eqz v19, :cond_19

    move-object/from16 v19, v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v11

    invoke-interface {v11, v12}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1a

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v3, :cond_18

    const-string v0, "override with Quick access"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forQuickAccess()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_19
    move-object/from16 v19, v11

    :cond_1a
    if-nez v18, :cond_1c

    if-nez v5, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->fallBackToHandlingInApp()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_1b
    move-object/from16 v19, v11

    :cond_1c
    invoke-direct {v6, v8, v0, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldStayWithinHost(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual {v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v6, v8, v2, v3, v10}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldKeepIntentRedirectInApp(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;ZLjava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v11, 0x1

    goto :goto_4

    :cond_1f
    const/4 v11, 0x0

    :goto_4
    if-nez v1, :cond_20

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v1, v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->isIntentToInstantApp(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_5

    :cond_20
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isSerpReferrer(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v12, 0x1

    goto :goto_6

    :cond_21
    const/4 v12, 0x0

    :goto_6
    invoke-direct {v6, v1, v12}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->preventDirectInstantAppsIntent(ZZ)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_22
    invoke-direct {v6, v7, v8, v0, v12}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->prepareExternalIntent(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/util/List;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isIncognito()Z

    move-result v1

    if-eqz v1, :cond_23

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleIncognitoIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/util/List;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_23
    move-object v3, v0

    if-eqz p3, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v5, 0x1

    goto :goto_7

    :cond_24
    const/4 v5, 0x0

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->needRedirectFallBackUrlInApp(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;ZLjava/util/List;ZZ)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUseDesktopUserAgent()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_26
    invoke-static {}, Lcom/sec/android/app/sbrowser/download_intercept/rule/DLInterceptUtil;->isSupportDLIntercept()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download_intercept/DLInterceptHandler;->shouldBlockIntent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-direct {v6, v15, v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isAlreadyInTargetWebApk(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_28
    invoke-direct {v6, v15, v7, v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->launchWebApkIfSoleIntentHandler(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forExternalIntent()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_29
    iget-object v0, v6, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0, v7, v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->maybeSetTargetPackage(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z

    move-result v0

    if-nez v0, :cond_2b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v15

    move v3, v13

    move-object v4, v9

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isInsecureIntentToOtherBrowser(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Z)Z

    move-result v0

    invoke-direct {v6, v7, v15, v9}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldAvoidShowingDisambiguationPrompt(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_2a
    move v3, v0

    goto :goto_8

    :cond_2b
    const/4 v3, 0x0

    :goto_8
    if-eqz v16, :cond_2c

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, p2

    move-object v3, v15

    move-object v4, v9

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->maybeAskToLaunchApp(ZLandroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v12

    move-object v4, v15

    move-object v5, v9

    move-object/from16 v6, p3

    move-object/from16 v7, v19

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivity(Landroid/content/Intent;ZZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_2d
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v10

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleUnresolvableIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZZ)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0

    :cond_2e
    :goto_a
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0
.end method

.method private shouldRequestFileAccess(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getAvailableContext(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)Landroid/content/Context;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "sbrowser"

    invoke-virtual {p2, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->canRequestPermission(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private shouldStayInWebapp(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->applyWebappScopePolicyForUrl(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private shouldStayWithinHost(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRendererInitiated()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getReferrerUrl()Ljava/lang/String;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_2

    return v0

    :cond_2
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    :try_start_1
    invoke-static {p3, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_4

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolversSubsetOf(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_4

    return p1

    :catch_0
    :cond_4
    :goto_1
    return v0
.end method

.method private showAskContinueDialog(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140517

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f140516

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1501c5

    invoke-direct {p4, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p4, v0}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p4

    iget-object v0, p4, Lm/k;->a:Lm/h;

    iput-object p3, v0, Lm/h;->f:Ljava/lang/CharSequence;

    iput-object p5, v0, Lm/h;->c:Landroid/graphics/drawable/Drawable;

    new-instance p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 p5, 0x3

    invoke-direct {p3, p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const p5, 0x7f140519

    invoke-virtual {p4, p5, p3}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;

    const/4 p5, 0x0

    invoke-direct {p3, p0, p1, p2, p5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;I)V

    const p1, 0x7f14051a

    invoke-virtual {p4, p1, p3}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/h;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/h;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    iget-object p3, p1, Lm/k;->a:Lm/h;

    iput-object p2, p3, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    iput-object p2, p3, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private showExternalAppIncognitoWarning(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lm/l;
    .locals 13

    move-object v8, p0

    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v10

    new-instance v11, Lm/k;

    iget-object v0, v8, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1501c5

    invoke-direct {v11, v0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f140511

    invoke-virtual {v11, v0}, Lm/k;->e(I)V

    const v0, 0x7f140510

    invoke-virtual {v11, v0}, Lm/k;->a(I)V

    new-instance v12, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZI)V

    const v0, 0x7f14050f

    invoke-virtual {v11, v0, v12}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v11

    new-instance v12, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;

    const/4 v7, 0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZI)V

    const v0, 0x7f14050e

    invoke-virtual {v11, v0, v12}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v7

    new-instance v11, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/e;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V

    iget-object v0, v7, Lm/k;->a:Lm/h;

    iput-object v11, v0, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    iput-object v1, v0, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v7}, Lm/k;->create()Lm/l;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$2;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lm/l;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private showMultipleAppDialog(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140512

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140513

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lm/k;->a:Lm/h;

    iput-object v0, v2, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v2, 0x7f140519

    invoke-virtual {v1, v2, v0}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/g;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;I)V

    const p1, 0x7f14051a

    invoke-virtual {v1, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/h;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/h;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    iget-object v0, p1, Lm/k;->a:Lm/h;

    iput-object p2, v0, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;

    const/4 v1, 0x2

    invoke-direct {p2, p0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/f;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;I)V

    iput-object p2, v0, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private startActivity(Landroid/content/Intent;ZZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 12

    move-object v0, p0

    move-object v9, p1

    const-string v10, "ExtNavHandler"

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->allowDiskWrites()Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/FileUriExposedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->forcePdfViewerAsIntentHandlerIfNeeded(Landroid/content/Intent;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->getAvailableContext(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)Landroid/content/Context;

    move-result-object v8

    instance-of v1, v8, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->startActivityWithChooser(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    :try_start_2
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/util/AndroidRuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/FileUriExposedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v8}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->doStartActivity(Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_3

    :try_start_4
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/util/AndroidRuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/FileUriExposedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    return-object v0

    :goto_2
    if-eqz v11, :cond_4

    :try_start_5
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/util/AndroidRuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/FileUriExposedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :goto_4
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->logTransactionTooLargeOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    goto :goto_7

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FileUriExposedException :: Could not start activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not start Activity for intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    sget-boolean v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "Activity not found."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_4
    :cond_5
    :goto_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v0

    return-object v0
.end method

.method private startActivityWithChooser(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$ResolveActivitySupplier;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 8

    const-string v0, ""

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$IntentBasedSupplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    if-nez p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolvesToChooser(Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p7}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->doStartActivity(Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$QueryIntentActivitiesSupplier;->getIncludingNonDefaultResolveInfos()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->resolveInfoContainsSelf(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v4}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {p2, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p2

    iput-object v3, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2, v5, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v6, v0

    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v5, "No icon resource found for package: "

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ExtNavHandler"

    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v0, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-gt p2, v0, :cond_2

    invoke-virtual {p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p7, 0x7f14051b

    invoke-virtual {p2, p7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p7, "android.intent.extra.TITLE"

    invoke-virtual {p3, p7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    new-instance p2, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p6

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$3;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getWindowAndroid()Lcom/sec/terrace/TerraceWindowAndroid;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getWindowAndroid()Lcom/sec/terrace/TerraceWindowAndroid;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Lcom/sec/terrace/TerraceWindowAndroid;->showCancelableIntent(Landroid/content/Intent;Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forAsyncAction(I)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0
.end method

.method private startIncognitoIntent(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->canLaunchIncognitoIntent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->hasCustomLeavingIncognitoDialog()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/b;-><init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->presentLeavingIncognitoDialog(Lcom/sec/terrace/base/TerraceCallback;)V

    return v2

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->showExternalAppIncognitoWarning(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    move v1, v2

    :catch_0
    :cond_4
    return v1
.end method


# virtual methods
.method public canLaunchIncognitoIntent()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public dismissDialogForNavigation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mIncognitoAlertDialog:Lm/l;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUserConsentDialog:Lm/l;

    :cond_1
    return-void
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getLastCommittedUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public linkify(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mUrlLinkify:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;->linkify(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public resolveInfoContainsSelf(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->mDelegate:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shouldOverrideUrlLoading(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldOverrideUrlLoading called on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->getEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExtNavHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->hasIntentScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad URI %s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->forNoOverride()Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isSupportedWtaiProtocol(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->parseWtaiMcProtocol(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    const-string v3, "browser_fallback_url"

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isValidForIntentFallbackNavigation(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;-><init>(I)V

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldOverrideUrlLoadingInternal(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->getPageTransition()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->isRedirect()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "LaunchExternalAppFormSubmitHasUserGesture - hasUserGesture: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->hasUserGesture()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$MutableBoolean;->get()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, v0, v4, v2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->handleFallbackUrl(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;Z)Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;

    move-result-object v5

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->printDebugShouldOverrideUrlLoadingResultType(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;)V

    :cond_6
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler$OverrideUrlLoadingResult;->getResultType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;->onAsyncActionStarted()V

    :cond_7
    return-object v5
.end method

.method public shouldStayInIncognito(ZLjava/lang/String;)Z
    .locals 0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->shouldStayInIncognito(ZZ)Z

    move-result p0

    return p0
.end method

.method public shouldStayInIncognito(ZZ)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    sget-boolean p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "ExtNavHandler"

    const-string p1, "Stay incognito"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->startActivity(Landroid/content/Intent;ZLcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;)V

    return-void
.end method
