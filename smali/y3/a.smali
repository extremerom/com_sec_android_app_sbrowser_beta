.class public final enum Ly3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Ly3/a;

.field public static final enum DIRECT:Ly3/a;

.field public static final enum EIGHT_BYTES:Ly3/a;

.field public static final enum FOUR_BYTES:Ly3/a;

.field public static final enum INDEFINITE:Ly3/a;

.field public static final enum ONE_BYTE:Ly3/a;

.field public static final enum RESERVED:Ly3/a;

.field public static final enum TWO_BYTES:Ly3/a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Ly3/a;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ly3/a;->DIRECT:Ly3/a;

    new-instance v1, Ly3/a;

    const/16 v2, 0x18

    const-string v3, "ONE_BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ly3/a;->ONE_BYTE:Ly3/a;

    new-instance v2, Ly3/a;

    const/16 v3, 0x19

    const-string v4, "TWO_BYTES"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v2, Ly3/a;->TWO_BYTES:Ly3/a;

    new-instance v3, Ly3/a;

    const/16 v4, 0x1a

    const-string v5, "FOUR_BYTES"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ly3/a;->FOUR_BYTES:Ly3/a;

    new-instance v4, Ly3/a;

    const/16 v5, 0x1b

    const-string v6, "EIGHT_BYTES"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ly3/a;->EIGHT_BYTES:Ly3/a;

    new-instance v5, Ly3/a;

    const/16 v6, 0x1c

    const-string v7, "RESERVED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ly3/a;->RESERVED:Ly3/a;

    new-instance v6, Ly3/a;

    const/16 v7, 0x1f

    const-string v8, "INDEFINITE"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Ly3/a;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ly3/a;->INDEFINITE:Ly3/a;

    filled-new-array/range {v0 .. v6}, [Ly3/a;

    move-result-object v0

    sput-object v0, Ly3/a;->$VALUES:[Ly3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ly3/a;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly3/a;
    .locals 1

    const-class v0, Ly3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly3/a;

    return-object p0
.end method

.method public static values()[Ly3/a;
    .locals 1

    sget-object v0, Ly3/a;->$VALUES:[Ly3/a;

    invoke-virtual {v0}, [Ly3/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly3/a;

    return-object v0
.end method
