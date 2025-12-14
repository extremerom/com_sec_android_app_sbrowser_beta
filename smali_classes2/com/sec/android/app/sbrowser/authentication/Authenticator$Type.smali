.class public final enum Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/authentication/Authenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum AUTO:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

.field public static final enum UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 8

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v1, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->AUTO:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v2, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v3, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v4, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v5, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v6, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    sget-object v7, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    filled-new-array/range {v0 .. v7}, [Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->UNKNOWN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "AUTO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->AUTO:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "FINGERPRINT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->FINGERPRINT:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "IRIS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->IRIS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "BIOMETRICS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->BIOMETRICS:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "INTELLIGENT_SCAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "INTELLIGENT_SCAN_MULTI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->INTELLIGENT_SCAN_MULTI:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    const-string v1, "PPP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->PPP:Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {}, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->$values()[Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/authentication/Authenticator$Type;

    return-object v0
.end method
