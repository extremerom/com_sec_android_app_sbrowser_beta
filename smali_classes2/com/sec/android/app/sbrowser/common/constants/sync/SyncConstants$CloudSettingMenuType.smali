.class public final enum Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CloudSettingMenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

.field public static final enum None:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

.field public static final enum V1:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

.field public static final enum V2:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->None:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->V1:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->V2:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->None:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    const-string v1, "V1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->V1:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    const-string v1, "V2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->V2:Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->$values()[Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/constants/sync/SyncConstants$CloudSettingMenuType;

    return-object v0
.end method
