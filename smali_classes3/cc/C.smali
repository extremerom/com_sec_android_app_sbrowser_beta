.class public final enum Lcc/C;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/C;

.field public static final enum ABSTRACT:Lcc/C;

.field public static final enum FINAL:Lcc/C;

.field public static final enum OPEN:Lcc/C;

.field public static final enum SEALED:Lcc/C;

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

    new-instance v0, Lcc/C;

    const-string v1, "FINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/C;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/C;->FINAL:Lcc/C;

    new-instance v1, Lcc/C;

    const-string v2, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/C;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/C;->OPEN:Lcc/C;

    new-instance v2, Lcc/C;

    const-string v3, "ABSTRACT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/C;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/C;->ABSTRACT:Lcc/C;

    new-instance v3, Lcc/C;

    const-string v4, "SEALED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcc/C;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcc/C;->SEALED:Lcc/C;

    filled-new-array {v0, v1, v2, v3}, [Lcc/C;

    move-result-object v0

    sput-object v0, Lcc/C;->$VALUES:[Lcc/C;

    new-instance v0, LE5/v;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Lcc/C;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/C;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/C;
    .locals 1

    const-class v0, Lcc/C;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/C;

    return-object p0
.end method

.method public static values()[Lcc/C;
    .locals 1

    sget-object v0, Lcc/C;->$VALUES:[Lcc/C;

    invoke-virtual {v0}, [Lcc/C;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/C;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/C;->value:I

    return p0
.end method
