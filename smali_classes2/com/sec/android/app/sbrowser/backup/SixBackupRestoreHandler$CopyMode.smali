.class final enum Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CopyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

.field public static final enum FILE_ONLY:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

.field public static final enum SUB_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

.field public static final enum WHOLE_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->FILE_ONLY:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->WHOLE_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->SUB_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    const-string v1, "FILE_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->FILE_ONLY:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    const-string v1, "WHOLE_DIR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->WHOLE_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    const-string v1, "SUB_DIR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->SUB_DIR:Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->$values()[Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->$VALUES:[Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->$VALUES:[Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/backup/SixBackupRestoreHandler$CopyMode;

    return-object v0
.end method
