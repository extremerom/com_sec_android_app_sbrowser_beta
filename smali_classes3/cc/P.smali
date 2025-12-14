.class public final enum Lcc/P;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/P;

.field public static final enum IN:Lcc/P;

.field public static final enum INV:Lcc/P;

.field public static final enum OUT:Lcc/P;

.field public static final enum STAR:Lcc/P;

.field private static internalValueMap:Lic/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic/r;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcc/P;

    const-string v1, "IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/P;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/P;->IN:Lcc/P;

    new-instance v1, Lcc/P;

    const-string v2, "OUT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/P;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/P;->OUT:Lcc/P;

    new-instance v2, Lcc/P;

    const-string v3, "INV"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/P;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/P;->INV:Lcc/P;

    new-instance v3, Lcc/P;

    const-string v4, "STAR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcc/P;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcc/P;->STAR:Lcc/P;

    filled-new-array {v0, v1, v2, v3}, [Lcc/P;

    move-result-object v0

    sput-object v0, Lcc/P;->$VALUES:[Lcc/P;

    new-instance v0, LO7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcc/P;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/P;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/P;
    .locals 1

    const-class v0, Lcc/P;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/P;

    return-object p0
.end method

.method public static values()[Lcc/P;
    .locals 1

    sget-object v0, Lcc/P;->$VALUES:[Lcc/P;

    invoke-virtual {v0}, [Lcc/P;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/P;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/P;->value:I

    return p0
.end method
