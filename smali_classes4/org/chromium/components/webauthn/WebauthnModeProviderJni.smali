.class Lorg/chromium/components/webauthn/WebauthnModeProviderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/WebauthnModeProvider$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/webauthn/WebauthnModeProvider$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/webauthn/WebauthnModeProviderJni;

    invoke-direct {v0}, Lorg/chromium/components/webauthn/WebauthnModeProviderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getWebauthnModeForWebContents(Lorg/chromium/content_public/browser/WebContents;)I
    .locals 0

    invoke-static {p1}, LJ/N;->MrPn_NQr(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
