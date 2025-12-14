.class final enum Lorg/chromium/components/webauthn/Barrier$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Barrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/webauthn/Barrier$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/webauthn/Barrier$Status;

.field public static final enum FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

.field public static final enum NONE:Lorg/chromium/components/webauthn/Barrier$Status;

.field public static final enum SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

.field public static final enum WAITING:Lorg/chromium/components/webauthn/Barrier$Status;


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/webauthn/Barrier$Status;
    .locals 4

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->NONE:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v3, Lorg/chromium/components/webauthn/Barrier$Status;->FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

    filled-new-array {v0, v1, v2, v3}, [Lorg/chromium/components/webauthn/Barrier$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Status;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->NONE:Lorg/chromium/components/webauthn/Barrier$Status;

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Status;

    const-string v1, "WAITING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Status;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

    new-instance v0, Lorg/chromium/components/webauthn/Barrier$Status;

    const-string v1, "FAILURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/chromium/components/webauthn/Barrier$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

    invoke-static {}, Lorg/chromium/components/webauthn/Barrier$Status;->$values()[Lorg/chromium/components/webauthn/Barrier$Status;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->$VALUES:[Lorg/chromium/components/webauthn/Barrier$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/webauthn/Barrier$Status;
    .locals 1

    const-class v0, Lorg/chromium/components/webauthn/Barrier$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/webauthn/Barrier$Status;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/webauthn/Barrier$Status;
    .locals 1

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->$VALUES:[Lorg/chromium/components/webauthn/Barrier$Status;

    invoke-virtual {v0}, [Lorg/chromium/components/webauthn/Barrier$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/webauthn/Barrier$Status;

    return-object v0
.end method
