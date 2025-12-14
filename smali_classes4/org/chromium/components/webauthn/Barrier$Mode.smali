.class public final enum Lorg/chromium/components/webauthn/Barrier$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Barrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/webauthn/Barrier$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/webauthn/Barrier$Mode;

.field public static final enum BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

.field public static final enum ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

.field public static final enum ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/webauthn/Barrier$Mode;
    .locals 3

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    filled-new-array {v0, v1, v2}, [Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Mode;

    const-string v1, "ONLY_FIDO_2_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_FIDO_2_API:Lorg/chromium/components/webauthn/Barrier$Mode;

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Mode;

    const-string v1, "ONLY_CRED_MAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->ONLY_CRED_MAN:Lorg/chromium/components/webauthn/Barrier$Mode;

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Mode;

    const-string v1, "BOTH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->BOTH:Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-static {}, Lorg/chromium/components/webauthn/Barrier$Mode;->$values()[Lorg/chromium/components/webauthn/Barrier$Mode;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->$VALUES:[Lorg/chromium/components/webauthn/Barrier$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/webauthn/Barrier$Mode;
    .locals 1

    const-class v0, Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/webauthn/Barrier$Mode;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Mode;->$VALUES:[Lorg/chromium/components/webauthn/Barrier$Mode;

    invoke-virtual {v0}, [Lorg/chromium/components/webauthn/Barrier$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/webauthn/Barrier$Mode;

    return-object v0
.end method
