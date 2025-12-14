.class public final enum Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2CredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConditionalUiState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum CANCEL_PENDING_RP_ID_VALIDATION_COMPLETE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum REQUEST_SENT_TO_PLATFORM:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum WAITING_FOR_RP_ID_VALIDATION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

.field public static final enum WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;
    .locals 7

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_RP_ID_VALIDATION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v2, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v3, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v4, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->REQUEST_SENT_TO_PLATFORM:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v5, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    sget-object v6, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING_RP_ID_VALIDATION_COMPLETE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    filled-new-array/range {v0 .. v6}, [Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->NONE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "WAITING_FOR_RP_ID_VALIDATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_RP_ID_VALIDATION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "WAITING_FOR_CREDENTIAL_LIST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_CREDENTIAL_LIST:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "WAITING_FOR_SELECTION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->WAITING_FOR_SELECTION:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "REQUEST_SENT_TO_PLATFORM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->REQUEST_SENT_TO_PLATFORM:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "CANCEL_PENDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    new-instance v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    const-string v1, "CANCEL_PENDING_RP_ID_VALIDATION_COMPLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->CANCEL_PENDING_RP_ID_VALIDATION_COMPLETE:Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {}, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->$values()[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->$VALUES:[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;
    .locals 1

    const-class v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->$VALUES:[Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    invoke-virtual {v0}, [Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/webauthn/Fido2CredentialRequest$ConditionalUiState;

    return-object v0
.end method
