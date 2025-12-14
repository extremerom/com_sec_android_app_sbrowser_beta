.class public final enum Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000b\u001a\u00020\u0003J\u0006\u0010\u000c\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "DEV",
        "STG",
        "PRD",
        "getBaseUrl",
        "getApiKey",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

.field private static final API_KEY_PROPERTIES_NAME:Ljava/lang/String; = "news_feed_api_key.properties"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DEV:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

.field public static final enum PRD:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

.field public static final enum STG:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

.field private static keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->DEV:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->STG:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->PRD:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    const-string v1, "dev"

    const-string v2, "DEV"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->DEV:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    const-string v1, "stage"

    const-string v2, "STG"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->STG:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    const-string v1, "product"

    const-string v2, "PRD"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->PRD:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$Companion;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->keyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Llb/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;

    return-object v0
.end method


# virtual methods
.method public final getApiKey()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->keyMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->value:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "news_feed_api_key.properties"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->value:Ljava/lang/String;

    invoke-static {v2, v3, p0}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->getProperty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "getProperty(...)"

    invoke-static {v2, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public final getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "https://news-cdn.internet.apps.samsung.com/"

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "https://news-cdn-stg.internet.apps.samsung.com/"

    goto :goto_0

    :cond_2
    const-string p0, "https://news-cdn-dev.internet.apps.samsung.com/"

    :goto_0
    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedServerProfile;->value:Ljava/lang/String;

    return-object p0
.end method
