.class public Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static willSBrowserHandleIntent(Landroid/content/Intent;Z)Z
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/high16 p1, 0x10000

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public applyWebappScopePolicyForUrl(Ljava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mActivity:Landroid/app/Activity;

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->scopePolicy()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getWebappUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->getWebappScopeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/model/webapp/WebappScopePolicy;->applyPolicyForNavigationToUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getActivityContext()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getLastCommittedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Lorg/chromium/url/GURL;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getLastCommittedUrl()Lorg/chromium/url/GURL;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWindowAndroid()Lcom/sec/terrace/TerraceWindowAndroid;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mTerrace:Lcom/sec/terrace/Terrace;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/sec/terrace/TerraceWindowAndroid;

    invoke-direct {v1, p0, v0}, Lcom/sec/terrace/TerraceWindowAndroid;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceWindowAndroid$IntentCallback;)V

    return-object v1
.end method

.method public hasCustomLeavingIncognitoDialog()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationInForeground(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isHidden()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move p0, v1

    :cond_2
    return p0
.end method

.method public isIntentForTrustedCallingApp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isIntentToInstantApp(Landroid/content/Intent;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/instantapps/SBrowserInstantAppsHandler;->isIntentToInstantApp(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public isValidWebApk(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkValidator;->isValidWebApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public maybeSetPendingIncognitoUrl(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->setPendingIncognitoUrl(Landroid/content/Intent;)V

    return-void
.end method

.method public maybeSetPendingReferrer(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->setPendingReferrer(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public maybeSetRequestMetadata(Landroid/content/Intent;ZZ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "maybeSetRequestMetadata hasUserGesture : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isRendererInitiated :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ExtNavDelegateImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;-><init>(ZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->onNewIntentWithRequestMetadata(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;)V

    return-void
.end method

.method public maybeSetTargetPackage(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public presentLeavingIncognitoDialog(Lcom/sec/terrace/base/TerraceCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public shouldAvoidDisambiguationDialog(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldDisableExternalIntentRequestsForUrl(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldEmbedderInitiatedNavigationsStayInBrowser()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldLaunchWebApksOnInitialIntent()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showSnackbar(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->mActivity:Landroid/app/Activity;

    const v0, 0x1020002

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    return-void
.end method

.method public willAppHandleIntent(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;->willSBrowserHandleIntent(Landroid/content/Intent;Z)Z

    move-result p0

    return p0
.end method
