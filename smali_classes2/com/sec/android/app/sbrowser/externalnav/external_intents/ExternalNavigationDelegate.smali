.class public interface abstract Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract applyWebappScopePolicyForUrl(Ljava/lang/String;)I
.end method

.method public abstract getActivityContext()Landroid/app/Activity;
.end method

.method public abstract getLastCommittedUrl()Ljava/lang/String;
.end method

.method public abstract getWindowAndroid()Lcom/sec/terrace/TerraceWindowAndroid;
.end method

.method public abstract hasCustomLeavingIncognitoDialog()Z
.end method

.method public abstract isApplicationInForeground(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z
.end method

.method public abstract isIntentForTrustedCallingApp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z
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
.end method

.method public abstract isIntentToInstantApp(Landroid/content/Intent;)Z
.end method

.method public abstract isValidWebApk(Ljava/lang/String;)Z
.end method

.method public abstract maybeSetPendingIncognitoUrl(Landroid/content/Intent;)V
.end method

.method public abstract maybeSetPendingReferrer(Landroid/content/Intent;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract maybeSetRequestMetadata(Landroid/content/Intent;ZZ)V
.end method

.method public abstract maybeSetTargetPackage(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z
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
.end method

.method public abstract presentLeavingIncognitoDialog(Lcom/sec/terrace/base/TerraceCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/base/TerraceCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldAvoidDisambiguationDialog(Landroid/content/Intent;)Z
.end method

.method public abstract shouldDisableExternalIntentRequestsForUrl(Ljava/lang/String;)Z
.end method

.method public abstract shouldEmbedderInitiatedNavigationsStayInBrowser()Z
.end method

.method public abstract shouldLaunchWebApksOnInitialIntent()Z
.end method

.method public abstract showSnackbar(I)V
.end method

.method public abstract willAppHandleIntent(Landroid/content/Intent;)Z
.end method
