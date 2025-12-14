.class public final enum Ly3/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Ly3/m;

.field public static final enum FALSE:Ly3/m;

.field public static final enum NULL:Ly3/m;

.field public static final enum RESERVED:Ly3/m;

.field public static final enum TRUE:Ly3/m;

.field public static final enum UNALLOCATED:Ly3/m;

.field public static final enum UNDEFINED:Ly3/m;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ly3/m;

    const-string v1, "FALSE"

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Ly3/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ly3/m;->FALSE:Ly3/m;

    new-instance v1, Ly3/m;

    const/16 v3, 0x15

    const-string v4, "TRUE"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Ly3/m;-><init>(Ljava/lang/String;II)V

    sput-object v1, Ly3/m;->TRUE:Ly3/m;

    new-instance v3, Ly3/m;

    const/16 v4, 0x16

    const-string v5, "NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Ly3/m;-><init>(Ljava/lang/String;II)V

    sput-object v3, Ly3/m;->NULL:Ly3/m;

    new-instance v4, Ly3/m;

    const/16 v5, 0x17

    const-string v6, "UNDEFINED"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7, v5}, Ly3/m;-><init>(Ljava/lang/String;II)V

    sput-object v4, Ly3/m;->UNDEFINED:Ly3/m;

    new-instance v5, Ly3/m;

    const-string v6, "RESERVED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v2}, Ly3/m;-><init>(Ljava/lang/String;II)V

    sput-object v5, Ly3/m;->RESERVED:Ly3/m;

    new-instance v6, Ly3/m;

    const-string v7, "UNALLOCATED"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v2}, Ly3/m;-><init>(Ljava/lang/String;II)V

    sput-object v6, Ly3/m;->UNALLOCATED:Ly3/m;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Ly3/m;

    move-result-object v0

    sput-object v0, Ly3/m;->$VALUES:[Ly3/m;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ly3/m;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly3/m;
    .locals 1

    const-class v0, Ly3/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly3/m;

    return-object p0
.end method

.method public static values()[Ly3/m;
    .locals 1

    sget-object v0, Ly3/m;->$VALUES:[Ly3/m;

    invoke-virtual {v0}, [Ly3/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly3/m;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Ly3/m;->value:I

    return p0
.end method
