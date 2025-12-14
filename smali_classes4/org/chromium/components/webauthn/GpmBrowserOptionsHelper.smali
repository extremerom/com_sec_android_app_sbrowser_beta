.class public Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sIsIncognitoForTesting:Ljava/lang/Boolean;


# direct methods
.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->lambda$setIsIncognitoExtraUntilTearDown$0()V

    return-void
.end method

.method public static addChannelExtraToOptions(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "com.android.chrome.CHANNEL"

    invoke-static {}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addIncognitoExtraToOptions(Landroid/os/Bundle;Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    const-string v0, "com.android.chrome.INCOGNITO"

    invoke-static {p1}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->isIncognito(Lorg/chromium/content_public/browser/RenderFrameHost;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static createDefaultBrowserOptions()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addChannelExtraToOptions(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static final getChannel()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isCanaryBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "canary"

    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isDevBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "dev"

    return-object v0

    :cond_1
    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isBetaBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "beta"

    return-object v0

    :cond_2
    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isStableBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "stable"

    return-object v0

    :cond_3
    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isLocalBuild()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "built_locally"

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final isIncognito(Lorg/chromium/content_public/browser/RenderFrameHost;)Z
    .locals 2

    sget-object v0, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->sIsIncognitoForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lorg/chromium/content_public/browser/WebContentsStatics;->fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isIncognito()Z

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method private static synthetic lambda$setIsIncognitoExtraUntilTearDown$0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->sIsIncognitoForTesting:Ljava/lang/Boolean;

    return-void
.end method

.method public static setIsIncognitoExtraUntilTearDown(Ljava/lang/Boolean;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->sIsIncognitoForTesting:Ljava/lang/Boolean;

    new-instance p0, LN4/a;

    const/16 v0, 0xd

    invoke-direct {p0, v0}, LN4/a;-><init>(I)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method
