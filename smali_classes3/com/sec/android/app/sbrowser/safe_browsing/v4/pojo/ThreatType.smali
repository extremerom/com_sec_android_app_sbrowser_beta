.class public final enum Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "THREAT_TYPE_UNSPECIFIED",
        "MALWARE",
        "SOCIAL_ENGINEERING",
        "UNWANTED_SOFTWARE",
        "POTENTIALLY_HARMFUL_APPLICATION",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

.field public static final enum MALWARE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

.field public static final enum POTENTIALLY_HARMFUL_APPLICATION:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

.field public static final enum SOCIAL_ENGINEERING:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

.field public static final enum THREAT_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

.field public static final enum UNWANTED_SOFTWARE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->THREAT_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->MALWARE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    sget-object v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->SOCIAL_ENGINEERING:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    sget-object v3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->UNWANTED_SOFTWARE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    sget-object v4, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->POTENTIALLY_HARMFUL_APPLICATION:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    const-string v1, "THREAT_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->THREAT_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    const-string v1, "MALWARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->MALWARE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    const-string v1, "SOCIAL_ENGINEERING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->SOCIAL_ENGINEERING:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    const-string v1, "UNWANTED_SOFTWARE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->UNWANTED_SOFTWARE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    const-string v1, "POTENTIALLY_HARMFUL_APPLICATION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->POTENTIALLY_HARMFUL_APPLICATION:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->$values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->$VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->$ENTRIES:Llb/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;->$VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatType;

    return-object v0
.end method
