.class public final enum Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "THREAT_ENTRY_TYPE_UNSPECIFIED",
        "URL",
        "EXECUTABLE",
        "IP_RANGE",
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

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

.field public static final enum EXECUTABLE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

.field public static final enum IP_RANGE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

.field public static final enum THREAT_ENTRY_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

.field public static final enum URL:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->THREAT_ENTRY_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->URL:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    sget-object v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->EXECUTABLE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    sget-object v3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->IP_RANGE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    const-string v1, "THREAT_ENTRY_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->THREAT_ENTRY_TYPE_UNSPECIFIED:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    const-string v1, "URL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->URL:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    const-string v1, "EXECUTABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->EXECUTABLE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    const-string v1, "IP_RANGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->IP_RANGE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->$values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->$VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->$ENTRIES:Llb/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;->$VALUES:[Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatEntryType;

    return-object v0
.end method
