.class final enum Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigFetchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum ALLOWLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum ALLOWLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum BLOCKLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum BLOCKLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum BLOCKLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum IDLE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum METADATA_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

.field public static final enum METADATA_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;
    .locals 10

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->METADATA_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v2, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->METADATA_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v3, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v4, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v5, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v6, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v7, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v8, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    sget-object v9, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    filled-new-array/range {v0 .. v9}, [Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->IDLE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "METADATA_FETCH_SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->METADATA_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "METADATA_FETCH_FAIL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->METADATA_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "ALLOWLIST_FETCH_SUCCESS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "ALLOWLIST_NOT_UPDATED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "ALLOWLIST_FETCH_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "BLOCKLIST_FETCH_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "BLOCKLIST_NOT_UPDATED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_NOT_UPDATED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "BLOCKLIST_FETCH_FAIL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->BLOCKLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    const-string v1, "COMPLETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->COMPLETED:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->$values()[Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->$VALUES:[Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->$VALUES:[Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    return-object v0
.end method
