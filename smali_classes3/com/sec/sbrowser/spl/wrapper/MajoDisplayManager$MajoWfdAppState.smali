.class public final enum Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MajoWfdAppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

.field public static final enum SETUP:Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

.field public static final enum TEARDOWN:Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;


# instance fields
.field private mWfdAppState:Ljava/lang/Object;


# direct methods
.method private static synthetic $values()[Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->SETUP:Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->TEARDOWN:Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    filled-new-array {v0, v1}, [Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SETUP"

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->SETUP:Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager;->a()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TEARDOWN"

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->TEARDOWN:Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->$values()[Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->$VALUES:[Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->mWfdAppState:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;
    .locals 1

    const-class v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    return-object p0
.end method

.method public static values()[Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->$VALUES:[Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    invoke-virtual {v0}, [Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;

    return-object v0
.end method


# virtual methods
.method public getWfdAppState()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/wrapper/MajoDisplayManager$MajoWfdAppState;->mWfdAppState:Ljava/lang/Object;

    return-object p0
.end method
