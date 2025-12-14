.class public final enum Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;",
        "",
        "(Ljava/lang/String;I)V",
        "ATTEST_OK",
        "ATTEST_FAIL",
        "SERVER_ERROR",
        "NONCE_ERROR",
        "NO_SAK",
        "SOCKET_TIMEOUT",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

.field public static final enum ATTEST_FAIL:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

.field public static final enum ATTEST_OK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

.field public static final enum NONCE_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

.field public static final enum NO_SAK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

.field public static final enum SERVER_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

.field public static final enum SOCKET_TIMEOUT:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;
    .locals 6

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->ATTEST_OK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->ATTEST_FAIL:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    sget-object v2, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SERVER_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    sget-object v3, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NONCE_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    sget-object v4, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NO_SAK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    sget-object v5, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SOCKET_TIMEOUT:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    filled-new-array/range {v0 .. v5}, [Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    const-string v1, "ATTEST_OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->ATTEST_OK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    const-string v1, "ATTEST_FAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->ATTEST_FAIL:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SERVER_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    const-string v1, "NONCE_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NONCE_ERROR:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    const-string v1, "NO_SAK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->NO_SAK:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    const-string v1, "SOCKET_TIMEOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->SOCKET_TIMEOUT:Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-static {}, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->$values()[Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->$VALUES:[Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;
    .locals 1

    const-class v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;->$VALUES:[Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/dvs/library/dvsagent/dto/AttestResult;

    return-object v0
.end method
