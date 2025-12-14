.class synthetic Lorg/chromium/components/webauthn/cred_man/CredManHelper$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/cred_man/CredManHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$chromium$components$webauthn$Fido2CredentialRequest$ConditionalUiState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->values()[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$4;->$SwitchMap$org$chromium$components$webauthn$Fido2CredentialRequest$ConditionalUiState:[I

    :try_start_0
    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/chromium/components/webauthn/cred_man/CredManHelper$4;->$SwitchMap$org$chromium$components$webauthn$Fido2CredentialRequest$ConditionalUiState:[I

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
