.class public final enum Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

.field public static final enum FAVICON_URL:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

.field public static final enum WEBSITE_URL:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->WEBSITE_URL:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    sget-object v1, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->FAVICON_URL:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    const-string v1, "WEBSITE_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->WEBSITE_URL:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    const-string v1, "FAVICON_URL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->FAVICON_URL:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->$values()[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->$VALUES:[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->$VALUES:[Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;

    return-object v0
.end method
