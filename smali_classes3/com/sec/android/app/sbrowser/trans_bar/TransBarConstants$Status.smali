.class final enum Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

.field public static final enum LOADING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

.field public static final enum ORIGIN:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

.field public static final enum TRANSLATING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->ORIGIN:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    sget-object v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->LOADING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    sget-object v2, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->TRANSLATING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    const-string v1, "ORIGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->ORIGIN:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    const-string v1, "LOADING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->LOADING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    const-string v1, "TRANSLATING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->TRANSLATING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-static {}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->$values()[Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->$VALUES:[Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->$VALUES:[Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    return-object v0
.end method
