.class public Lorg/chromium/components/webauthn/WebauthnModeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/WebauthnModeProvider$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/components/webauthn/WebauthnModeProvider;


# instance fields
.field private mGlobalMode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/WebauthnModeProvider;->sInstance:Lorg/chromium/components/webauthn/WebauthnModeProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/webauthn/WebauthnModeProvider;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;-><init>()V

    sput-object v0, Lorg/chromium/components/webauthn/WebauthnModeProvider;->sInstance:Lorg/chromium/components/webauthn/WebauthnModeProvider;

    :cond_0
    sget-object v0, Lorg/chromium/components/webauthn/WebauthnModeProvider;->sInstance:Lorg/chromium/components/webauthn/WebauthnModeProvider;

    return-object v0
.end method

.method public static is(Lorg/chromium/content_public/browser/WebContents;I)Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getWebauthnMode(Lorg/chromium/content_public/browser/WebContents;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChrome(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getInstance()Lorg/chromium/components/webauthn/WebauthnModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getWebauthnMode(Lorg/chromium/content_public/browser/WebContents;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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


# virtual methods
.method public getCredManRequestDecorator(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/cred_man/CredManRequestDecorator;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getWebauthnMode(Lorg/chromium/content_public/browser/WebContents;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;->getInstance()Lorg/chromium/components/webauthn/cred_man/AppCredManRequestDecorator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p0, p1, :cond_2

    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;->getInstance()Lorg/chromium/components/webauthn/cred_man/GpmCredManRequestDecorator;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    invoke-static {}, Lorg/chromium/components/webauthn/cred_man/BrowserCredManRequestDecorator;->getInstance()Lorg/chromium/components/webauthn/cred_man/BrowserCredManRequestDecorator;

    move-result-object p0

    return-object p0
.end method

.method public getFido2ApiCallParams(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/components/webauthn/WebauthnModeProvider;->getWebauthnMode(Lorg/chromium/content_public/browser/WebContents;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    sget-object p0, Lorg/chromium/components/webauthn/Fido2ApiCall;->APP_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    return-object p0

    :cond_0
    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lorg/chromium/components/webauthn/Fido2ApiCall;->BROWSER_API:Lorg/chromium/components/webauthn/Fido2ApiCall$Fido2ApiCallParams;

    return-object p0
.end method

.method public getGlobalWebauthnMode()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/webauthn/WebauthnModeProvider;->mGlobalMode:I

    return p0
.end method

.method public getWebauthnMode(Lorg/chromium/content_public/browser/WebContents;)I
    .locals 0

    iget p0, p0, Lorg/chromium/components/webauthn/WebauthnModeProvider;->mGlobalMode:I

    if-eqz p0, :cond_0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/components/webauthn/WebauthnModeProviderJni;->get()Lorg/chromium/components/webauthn/WebauthnModeProvider$Natives;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/chromium/components/webauthn/WebauthnModeProvider$Natives;->getWebauthnModeForWebContents(Lorg/chromium/content_public/browser/WebContents;)I

    move-result p0

    return p0
.end method

.method public setGlobalWebauthnMode(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/components/webauthn/WebauthnModeProvider;->mGlobalMode:I

    return-void
.end method
