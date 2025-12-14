.class final enum Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

.field public static final enum MALWARE:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

.field public static final enum PHISHING:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

.field public static final enum UNWANTED_SOFTWARE:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;


# direct methods
.method private static synthetic $values()[Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;
    .locals 3

    sget-object v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->MALWARE:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    sget-object v1, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->UNWANTED_SOFTWARE:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    sget-object v2, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->PHISHING:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    const-string v1, "MALWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->MALWARE:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    const-string v1, "UNWANTED_SOFTWARE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->UNWANTED_SOFTWARE:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    const-string v1, "PHISHING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->PHISHING:Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    invoke-static {}, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->$values()[Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->$VALUES:[Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;
    .locals 1

    const-class v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    return-object p0
.end method

.method public static values()[Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->$VALUES:[Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    invoke-virtual {v0}, [Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/terrace/browser/safe_browsing/TinSafeBrowsingHelper$ThreatType;

    return-object v0
.end method
