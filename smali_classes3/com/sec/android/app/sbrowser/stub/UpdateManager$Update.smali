.class final enum Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

.field public static final enum FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

.field public static final enum IGNORE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

.field public static final enum NORMAL:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

.field public static final enum RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NONE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    sget-object v1, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NORMAL:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    sget-object v2, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    sget-object v3, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    sget-object v4, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->IGNORE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NONE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->NORMAL:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    const-string v1, "RECOMMENDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->RECOMMENDED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    const-string v1, "FORCED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->FORCED:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    new-instance v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    const-string v1, "IGNORE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->IGNORE:Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->$values()[Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->$VALUES:[Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->$VALUES:[Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/stub/UpdateManager$Update;

    return-object v0
.end method
