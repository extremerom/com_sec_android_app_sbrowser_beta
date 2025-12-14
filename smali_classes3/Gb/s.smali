.class public final enum LGb/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LGb/s;

.field public static final enum UBYTEARRAY:LGb/s;

.field public static final enum UINTARRAY:LGb/s;

.field public static final enum ULONGARRAY:LGb/s;

.field public static final enum USHORTARRAY:LGb/s;


# instance fields
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

    new-instance v0, LGb/s;

    const-string v1, "kotlin/UByteArray"

    const/4 v2, 0x0

    invoke-static {v1, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v1

    const-string v3, "UBYTEARRAY"

    invoke-direct {v0, v3, v2, v1}, LGb/s;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v0, LGb/s;->UBYTEARRAY:LGb/s;

    new-instance v1, LGb/s;

    const-string v3, "kotlin/UShortArray"

    invoke-static {v3, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v3

    const-string v4, "USHORTARRAY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, LGb/s;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v1, LGb/s;->USHORTARRAY:LGb/s;

    new-instance v3, LGb/s;

    const-string v4, "kotlin/UIntArray"

    invoke-static {v4, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v4

    const-string v5, "UINTARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, LGb/s;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v3, LGb/s;->UINTARRAY:LGb/s;

    new-instance v4, LGb/s;

    const-string v5, "kotlin/ULongArray"

    invoke-static {v5, v2}, LG5/B3;->c(Ljava/lang/String;Z)Lhc/b;

    move-result-object v2

    const-string v5, "ULONGARRAY"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, LGb/s;-><init>(Ljava/lang/String;ILhc/b;)V

    sput-object v4, LGb/s;->ULONGARRAY:LGb/s;

    filled-new-array {v0, v1, v3, v4}, [LGb/s;

    move-result-object v0

    sput-object v0, LGb/s;->$VALUES:[LGb/s;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LGb/s;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILhc/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LGb/s;->classId:Lhc/b;

    invoke-virtual {p3}, Lhc/b;->f()Lhc/f;

    move-result-object p1

    iput-object p1, p0, LGb/s;->typeName:Lhc/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LGb/s;
    .locals 1

    const-class v0, LGb/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGb/s;

    return-object p0
.end method

.method public static values()[LGb/s;
    .locals 1

    sget-object v0, LGb/s;->$VALUES:[LGb/s;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGb/s;

    return-object v0
.end method


# virtual methods
.method public final a()Lhc/f;
    .locals 0

    iget-object p0, p0, LGb/s;->typeName:Lhc/f;

    return-object p0
.end method
