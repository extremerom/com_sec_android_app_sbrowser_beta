.class final enum Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigFetchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

.field public static final enum BLOCKED_FEATURES_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

.field public static final enum BLOCKED_URL_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

.field public static final enum COMPLETED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

.field public static final enum IDLE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    sget-object v1, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->BLOCKED_FEATURES_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    sget-object v2, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->BLOCKED_URL_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    sget-object v3, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    const-string v1, "BLOCKED_FEATURES_CHANGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->BLOCKED_FEATURES_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    const-string v1, "BLOCKED_URL_CHANGED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->BLOCKED_URL_CHANGED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->$values()[Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->$VALUES:[Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->$VALUES:[Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$ConfigFetchState;

    return-object v0
.end method
