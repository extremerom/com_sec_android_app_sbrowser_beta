.class public final enum Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum ACCOUNT_REMOVED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum BACKUP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum BACKUP_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum BACKUP_USAGE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum BILLING_SA_CHECK:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum CANCEL_NOTIFICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum CHANGE_SYNC_STATUS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum DELETE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum DETAIL_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field private static final EXTRACT_KEY:I = 0xf4240

.field public static final enum GET_DETAILS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum GET_SIZE_BACKUP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum GET_SIZE_BACKUP_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum MANDATORY_PERMISSION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum POLICY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum PUSH:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum QUOTA:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum REFRESH_MODEL_DATA:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum RESTORE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum RESTORE_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum STORE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum SYNC_SIZE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

.field public static final enum SYNC_UI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;


# instance fields
.field private final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;
    .locals 24

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v1, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BACKUP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v2, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->RESTORE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v3, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->GET_DETAILS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v4, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->CANCEL_NOTIFICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v5, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->ACCOUNT_REMOVED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v6, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->MANDATORY_PERMISSION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v7, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->QUOTA:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v8, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BACKUP_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v9, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->RESTORE_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v10, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->DETAIL_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v11, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BACKUP_USAGE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v12, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->DELETE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v13, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->STORE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v14, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BILLING_SA_CHECK:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v15, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->CHANGE_SYNC_STATUS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v16, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->PUSH:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v17, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->POLICY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v18, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC_UI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v19, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v20, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->GET_SIZE_BACKUP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v21, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC_SIZE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v22, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->GET_SIZE_BACKUP_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    sget-object v23, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->REFRESH_MODEL_DATA:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    filled-new-array/range {v0 .. v23}, [Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->NONE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x1

    const/16 v2, 0x65

    const-string v3, "BACKUP"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BACKUP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "RESTORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->RESTORE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x3

    const/16 v2, 0x67

    const-string v3, "GET_DETAILS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->GET_DETAILS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x4

    const/16 v2, 0x68

    const-string v3, "CANCEL_NOTIFICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->CANCEL_NOTIFICATION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x5

    const/16 v2, 0x69

    const-string v3, "ACCOUNT_REMOVED"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->ACCOUNT_REMOVED:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x6

    const/16 v2, 0x6a

    const-string v3, "MANDATORY_PERMISSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->MANDATORY_PERMISSION:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/4 v1, 0x7

    const/16 v2, 0x6b

    const-string v3, "QUOTA"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->QUOTA:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x8

    const/16 v2, 0x6c

    const-string v3, "BACKUP_CANCEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BACKUP_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x9

    const/16 v2, 0x6d

    const-string v3, "RESTORE_CANCEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->RESTORE_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0xa

    const/16 v2, 0x6e

    const-string v3, "DETAIL_CANCEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->DETAIL_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0xb

    const/16 v2, 0x6f

    const-string v3, "BACKUP_USAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BACKUP_USAGE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0xc

    const/16 v2, 0x70

    const-string v3, "DELETE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->DELETE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0xd

    const/16 v2, 0x71

    const-string v3, "STORE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->STORE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0xe

    const/16 v2, 0x72

    const-string v3, "BILLING_SA_CHECK"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->BILLING_SA_CHECK:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0xf

    const/16 v2, 0x73

    const-string v3, "CHANGE_SYNC_STATUS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->CHANGE_SYNC_STATUS:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x10

    const/16 v2, 0x74

    const-string v3, "PUSH"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->PUSH:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x11

    const/16 v2, 0x78

    const-string v3, "POLICY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->POLICY:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x12

    const/16 v2, 0xc8

    const-string v3, "SYNC_UI"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC_UI:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x13

    const/16 v2, 0xc9

    const-string v3, "SYNC"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x14

    const/16 v2, 0x12c

    const-string v3, "GET_SIZE_BACKUP"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->GET_SIZE_BACKUP:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x15

    const/16 v2, 0x12d

    const-string v3, "SYNC_SIZE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->SYNC_SIZE:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x16

    const/16 v2, 0x190

    const-string v3, "GET_SIZE_BACKUP_CANCEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->GET_SIZE_BACKUP_CANCEL:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    const/16 v1, 0x17

    const/16 v2, 0x191

    const-string v3, "REFRESH_MODEL_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->REFRESH_MODEL_DATA:Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->$values()[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->$VALUES:[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->$VALUES:[Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/scloud/sync/common/configuration/ServiceType;

    return-object v0
.end method
