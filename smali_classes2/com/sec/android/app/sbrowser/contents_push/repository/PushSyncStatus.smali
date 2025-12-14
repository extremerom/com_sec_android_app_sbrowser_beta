.class public final enum Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

.field public static final enum FAILED:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

.field public static final enum IN_PROGRESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

.field public static final enum SUCCESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->SUCCESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->FAILED:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->IN_PROGRESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->SUCCESS:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->FAILED:Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->$values()[Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/contents_push/repository/PushSyncStatus;

    return-object v0
.end method
