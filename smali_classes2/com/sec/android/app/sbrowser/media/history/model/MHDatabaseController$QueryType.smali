.class final enum Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

.field public static final enum MODEL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

.field public static final enum PAGE_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

.field public static final enum SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

.field public static final enum VIDEO_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->VIDEO_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->PAGE_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    sget-object v3, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->MODEL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    const-string v1, "VIDEO_URL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->VIDEO_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    const-string v1, "PAGE_URL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->PAGE_URL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    const-string v1, "SIZE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->SIZE:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    const-string v1, "MODEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->MODEL:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->$values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->$VALUES:[Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$QueryType;

    return-object v0
.end method
