.class public Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final GPM_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static sInstance:Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.google.android.gms"

    const-string v1, ".auth.api.credentials.credman.service.PasswordAndPasskeyService"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->GPM_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->sInstance:Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->sInstance:Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->sInstance:Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;

    return-object v0
.end method


# virtual methods
.method public updateCreateCredentialRequestBuilder(Landroid/credentials/CreateCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/components/autofill/b;->t(Landroid/credentials/CreateCredentialRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public updateCreateCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManCreateCredentialRequestHelper;->getUserId()[B

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v0, "androidx.credentials.BUNDLE_KEY_USER_ID"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object p2, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->GPM_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "androidx.credentials.BUNDLE_KEY_DEFAULT_PROVIDER"

    invoke-virtual {p0, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "androidx.credentials.BUNDLE_KEY_REQUEST_DISPLAY_INFO"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addChannelExtraToOptions(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateGetCredentialRequestBuilder(Landroid/credentials/GetCredentialRequest$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assertNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getOrigin()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/components/autofill/b;->y(Landroid/credentials/GetCredentialRequest$Builder;Ljava/lang/String;)V

    return-void
.end method

.method public updateGetCredentialRequestBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 1

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getIgnoreGpm()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "androidx.credentials.BUNDLE_KEY_PREFER_UI_BRANDING_COMPONENT_NAME"

    sget-object v0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->GPM_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getPreferImmediatelyAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getPlayServicesAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string p2, "androidx.credentials.BUNDLE_KEY_PREFER_IMMEDIATELY_AVAILABLE_CREDENTIALS"

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePasswordCredentialOptionBuilder(Landroid/credentials/CredentialOption$Builder;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    sget-object p0, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->GPM_COMPONENT_NAME:Landroid/content/ComponentName;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/util/HashSet;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/components/webauthn/cred_man/c;->o(Landroid/credentials/CredentialOption$Builder;Ljava/util/Set;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duplicate element: "

    invoke-static {p0, p2}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePasswordCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 1

    invoke-static {p1}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addChannelExtraToOptions(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addIncognitoExtraToOptions(Landroid/os/Bundle;Lorg/chromium/content_public/browser/RenderFrameHost;)V

    const-string p0, "com.android.chrome.PASSWORDS_ONLY_FOR_THE_CHANNEL"

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.android.chrome.PASSWORDS_WITH_NO_USERNAME_INCLUDED"

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "com.android.chrome.GPM_IGNORE"

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getIgnoreGpm()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePublicKeyCredentialOptionBundle(Landroid/os/Bundle;Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addChannelExtraToOptions(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getRenderFrameHost()Lorg/chromium/content_public/browser/RenderFrameHost;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/chromium/components/webauthn/GpmBrowserOptionsHelper;->addIncognitoExtraToOptions(Landroid/os/Bundle;Lorg/chromium/content_public/browser/RenderFrameHost;)V

    const-string p0, "com.android.chrome.GPM_IGNORE"

    invoke-virtual {p2}, Lorg/chromium/components/webauthn/cred_man/CredManGetCredentialRequestHelper;->getIgnoreGpm()Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
