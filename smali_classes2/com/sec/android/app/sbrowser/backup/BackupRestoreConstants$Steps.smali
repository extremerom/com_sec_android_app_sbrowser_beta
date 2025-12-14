.class final enum Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Steps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field public static final enum PROGRESS_FINAL:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field public static final enum PROGRESS_FIRST_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field public static final enum PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field public static final enum PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field public static final enum PROGRESS_UNKNOWN:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

.field private static final STEPS:[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;


# instance fields
.field private final mIndex:I

.field private final mProgress:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FIRST_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    sget-object v2, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    sget-object v3, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FINAL:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    sget-object v4, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_UNKNOWN:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const-string v1, "PROGRESS_START"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_START:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const-string v1, "PROGRESS_FIRST_STEP"

    const/16 v4, 0x14

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FIRST_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const/4 v1, 0x2

    const/16 v3, 0x50

    const-string v4, "PROGRESS_SECOND_STEP"

    invoke-direct {v0, v4, v1, v1, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_SECOND_STEP:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const/4 v1, 0x3

    const/16 v3, 0x63

    const-string v4, "PROGRESS_FINAL"

    invoke-direct {v0, v4, v1, v1, v3}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_FINAL:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    const-string v1, "PROGRESS_UNKNOWN"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_UNKNOWN:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->$values()[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->$VALUES:[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->values()[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->STEPS:[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->mIndex:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->mProgress:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->$VALUES:[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    return-object v0
.end method


# virtual methods
.method public getNextStepProgress()I
    .locals 3

    iget p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->mIndex:I

    add-int/lit8 v0, p0, 0x1

    sget-object v1, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->STEPS:[Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    array-length v2, v1

    if-le v0, v2, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->PROGRESS_UNKNOWN:Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    aget-object p0, v1, p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->getProgress()I

    move-result p0

    return p0
.end method

.method public getProgress()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/backup/BackupRestoreConstants$Steps;->mProgress:I

    return p0
.end method
