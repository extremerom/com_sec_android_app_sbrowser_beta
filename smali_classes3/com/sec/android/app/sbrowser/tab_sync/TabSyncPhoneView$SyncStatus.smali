.class public final enum Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

.field public static final enum ACTIVE:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

.field public static final enum PENDING:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

.field public static final enum STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    sget-object v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    sget-object v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->ACTIVE:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    const-string v1, "PENDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->PENDING:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    const-string v1, "STOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->STOP:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    invoke-static {}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->$values()[Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->$VALUES:[Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$SyncStatus;

    return-object v0
.end method
