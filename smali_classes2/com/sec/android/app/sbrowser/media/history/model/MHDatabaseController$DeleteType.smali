.class final enum Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeleteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

.field public static final enum ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

.field public static final enum INDEX:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

.field public static final enum LIMIT_SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->LIMIT_SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->INDEX:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    const-string v1, "LIMIT_SIZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->LIMIT_SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    const-string v1, "INDEX"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->INDEX:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->$values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$DeleteType;

    return-object v0
.end method
