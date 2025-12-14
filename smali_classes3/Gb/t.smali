.class public final enum LGb/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LGb/t;

.field public static final enum UBYTE:LGb/t;

.field public static final enum UINT:LGb/t;

.field public static final enum ULONG:LGb/t;

.field public static final enum USHORT:LGb/t;


# instance fields
.field private final arrayClassId:Lhc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final classId:Lhc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeName:Lhc/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LGb/t;

    const-string v1, "kotlin/UByte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v1

    const-string v3, "UBYTE"

    invoke-direct {v0, v3, v2, v1}, LGb/t;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v0, LGb/t;->UBYTE:LGb/t;

    new-instance v1, LGb/t;

    const-string v3, "kotlin/UShort"

    invoke-static {v3, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v3

    const-string v4, "USHORT"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, LGb/t;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v1, LGb/t;->USHORT:LGb/t;

    new-instance v3, LGb/t;

    const-string v4, "kotlin/UInt"

    invoke-static {v4, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v4

    const-string v5, "UINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, LGb/t;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v3, LGb/t;->UINT:LGb/t;

    new-instance v4, LGb/t;

    const-string v5, "kotlin/ULong"

    invoke-static {v5, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v2

    const-string v5, "ULONG"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, LGb/t;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v4, LGb/t;->ULONG:LGb/t;

    filled-new-array {v0, v1, v3, v4}, [LGb/t;

    move-result-object v0

    sput-object v0, LGb/t;->$VALUES:[LGb/t;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LGb/t;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILhc/b;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LGb/t;->classId:Lhc/b;

    invoke-virtual {p3}, Lhc/b;->f()Lhc/f;

    move-result-object p1

    iput-object p1, p0, LGb/t;->typeName:Lhc/f;

    new-instance p2, Lhc/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lhc/f;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    iget-object p3, p3, Lhc/b;->a:Lhc/c;

    invoke-direct {p2, p3, p1}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    iput-object p2, p0, LGb/t;->arrayClassId:Lhc/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LGb/t;
    .locals 1

    const-class v0, LGb/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGb/t;

    return-object p0
.end method

.method public static values()[LGb/t;
    .locals 1

    sget-object v0, LGb/t;->$VALUES:[LGb/t;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGb/t;

    return-object v0
.end method


# virtual methods
.method public final a()Lhc/b;
    .locals 0

    iget-object p0, p0, LGb/t;->arrayClassId:Lhc/b;

    return-object p0
.end method

.method public final c()Lhc/b;
    .locals 0

    iget-object p0, p0, LGb/t;->classId:Lhc/b;

    return-object p0
.end method

.method public final d()Lhc/f;
    .locals 0

    iget-object p0, p0, LGb/t;->typeName:Lhc/f;

    return-object p0
.end method
