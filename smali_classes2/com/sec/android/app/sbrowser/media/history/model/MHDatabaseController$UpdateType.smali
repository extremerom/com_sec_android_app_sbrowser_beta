.class final enum Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

.field public static final enum ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

.field public static final enum THUMBNAIL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

.field public static final enum TITLE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->THUMBNAIL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->TITLE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->ALL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    const-string v1, "THUMBNAIL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->THUMBNAIL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    const-string v1, "TITLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->TITLE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->$values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$UpdateType;

    return-object v0
.end method
