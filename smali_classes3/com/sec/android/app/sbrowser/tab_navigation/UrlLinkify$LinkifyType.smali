.class final enum Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

.field public static final enum ADDRESS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

.field public static final enum EMAIL:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

.field public static final enum SMS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

.field public static final enum TELEPHONY:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->TELEPHONY:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->SMS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    sget-object v2, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->EMAIL:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    sget-object v3, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->ADDRESS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    const-string v1, "TELEPHONY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->TELEPHONY:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    const-string v1, "SMS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->SMS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    const-string v1, "EMAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->EMAIL:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    const-string v1, "ADDRESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->ADDRESS:Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->$values()[Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->$VALUES:[Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->$VALUES:[Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/tab_navigation/UrlLinkify$LinkifyType;

    return-object v0
.end method
