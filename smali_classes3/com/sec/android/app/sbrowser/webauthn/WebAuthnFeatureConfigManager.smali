.class public Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mIsNativeInitialized:Z

.field private mIsWebAuthnNativePrefUpdatePending:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isWebAuthnCredManPasskeyActivatedFromConfig(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "webauthn_passkey_credman_enabled"

    const/4 v1, 0x1

    const-string v2, "WebAuthn"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isWebAuthnPasskeyActivatedFromConfig(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;

    move-result-object p0

    const-string v0, "webauthn_passkey_enabled"

    const/4 v1, 0x1

    const-string v2, "WebAuthn"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigManager;->getBoolean(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onFeatureConfigUpdated(Landroid/content/Context;)V
    .locals 2

    const-string v0, "onFeatureConfigUpdated"

    const-string v1, "WebAuthnFeatureConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->mIsNativeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->setNativePrefs(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "isWebAuthnNativePrefUpdatePending"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->mIsWebAuthnNativePrefUpdatePending:Z

    :goto_0
    return-void
.end method

.method public onNativeInitialized(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->mIsNativeInitialized:Z

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->mIsWebAuthnNativePrefUpdatePending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->setNativePrefs(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->mIsWebAuthnNativePrefUpdatePending:Z

    :cond_0
    return-void
.end method

.method public setNativePrefs(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->isWebAuthnPasskeyActivatedFromConfig(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setWebAuthnPasskeyEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/webauthn/WebAuthnFeatureConfigManager;->isWebAuthnCredManPasskeyActivatedFromConfig(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setCredManPasskeyEnabled(Z)V

    return-void
.end method
