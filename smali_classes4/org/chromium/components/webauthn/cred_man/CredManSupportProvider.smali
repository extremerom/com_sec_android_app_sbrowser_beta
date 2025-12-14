.class public Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sCredManSupport:I

.field private static sOverrideAndroidVersion:Ljava/lang/Integer;

.field private static sOverrideForcesGpm:Ljava/lang/Boolean;


# direct methods
.method private static getAndroidVersion()I
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sOverrideAndroidVersion:Ljava/lang/Integer;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getCredManSupport()I
    .locals 5
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x22

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    sput v2, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v2

    :cond_1
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->notSkippedBecauseInTests()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->hasOldGmsVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    sput v2, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v2

    :cond_2
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->notSkippedBecauseInTests()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "credential"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    sput v2, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    invoke-static {v1}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->recordCredManAvailability(Z)V

    sget v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->recordCredManAvailability(Z)V

    const-class v2, Lorg/chromium/components/webauthn/cred_man/CredManUiRecommender;

    invoke-static {v2}, Lorg/chromium/base/ServiceLoaderUtil;->maybeCreate(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/components/webauthn/cred_man/CredManUiRecommender;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lorg/chromium/components/webauthn/cred_man/CredManUiRecommender;->recommendsCustomUi()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    sget-object v3, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sOverrideForcesGpm:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_5
    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getGlobalWebauthnMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    move v1, v0

    :cond_6
    if-nez v2, :cond_8

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v0, 0x2

    :goto_2
    sput v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v0
.end method

.method public static getCredManSupportForWebView()I
    .locals 3

    sget v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x22

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    sput v2, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v2

    :cond_1
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->notSkippedBecauseInTests()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "credential"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    sput v2, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v2

    :cond_2
    const/4 v0, 0x2

    sput v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sCredManSupport:I

    return v0
.end method

.method private static getMinGmsVersionForCurrentChannel()I
    .locals 1

    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isBetaBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/version_info/VersionInfo;->isStableBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xe6b19e0

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0xe713460

    :goto_1
    return v0
.end method

.method private static hasOldGmsVersion()Z
    .locals 2

    invoke-static {}, Lorg/chromium/components/webauthn/GmsCoreUtils;->getGmsCoreVersion()I

    move-result v0

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->getMinGmsVersionForCurrentChannel()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static notSkippedBecauseInTests()Z
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sOverrideForcesGpm:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManSupportProvider;->sOverrideAndroidVersion:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static recordCredManAvailability(Z)V
    .locals 1

    const-string v0, "WebAuthentication.Android.CredManAvailability"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    return-void
.end method
