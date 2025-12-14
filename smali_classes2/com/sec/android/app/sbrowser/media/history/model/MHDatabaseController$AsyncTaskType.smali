.class final enum Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AsyncTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

.field public static final enum INSERT:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->INSERT:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    filled-new-array {v0}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    const-string v1, "INSERT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->INSERT:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->$values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$AsyncTaskType;

    return-object v0
.end method
