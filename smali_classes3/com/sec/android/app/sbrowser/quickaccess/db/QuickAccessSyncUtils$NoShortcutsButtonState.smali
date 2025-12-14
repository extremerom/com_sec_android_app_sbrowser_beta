.class public final enum Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoShortcutsButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

.field public static final enum ADD_SAMSUNG_ACCOUNT:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

.field public static final enum QUICK_ACCESS_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

.field public static final enum SYNC_CANCEL:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

.field public static final enum SYNC_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

.field public static final enum SYNC_REFRESH:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_REFRESH:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_CANCEL:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->ADD_SAMSUNG_ACCOUNT:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->QUICK_ACCESS_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    const-string v1, "SYNC_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    const-string v1, "SYNC_REFRESH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_REFRESH:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    const-string v1, "SYNC_CANCEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->SYNC_CANCEL:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    const-string v1, "ADD_SAMSUNG_ACCOUNT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->ADD_SAMSUNG_ACCOUNT:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    const-string v1, "QUICK_ACCESS_OFF"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->QUICK_ACCESS_OFF:Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils$NoShortcutsButtonState;

    return-object v0
.end method
