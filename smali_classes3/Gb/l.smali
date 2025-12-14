.class public final enum LGb/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LGb/l;

.field public static final enum BOOLEAN:LGb/l;

.field public static final enum BYTE:LGb/l;

.field public static final enum CHAR:LGb/l;

.field public static final Companion:LGb/k;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DOUBLE:LGb/l;

.field public static final enum FLOAT:LGb/l;

.field public static final enum INT:LGb/l;

.field public static final enum LONG:LGb/l;

.field public static final NUMBER_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "LGb/l;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum SHORT:LGb/l;


# instance fields
.field private final arrayTypeFqName$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final arrayTypeName:Lhc/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeFqName$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final typeName:Lhc/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, LGb/l;

    const-string v1, "Boolean"

    const-string v2, "BOOLEAN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LGb/l;->BOOLEAN:LGb/l;

    new-instance v8, LGb/l;

    const-string v1, "Char"

    const-string v2, "CHAR"

    const/4 v3, 0x1

    invoke-direct {v8, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, LGb/l;->CHAR:LGb/l;

    new-instance v9, LGb/l;

    const-string v1, "Byte"

    const-string v2, "BYTE"

    const/4 v3, 0x2

    invoke-direct {v9, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, LGb/l;->BYTE:LGb/l;

    new-instance v10, LGb/l;

    const-string v1, "Short"

    const-string v2, "SHORT"

    const/4 v3, 0x3

    invoke-direct {v10, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, LGb/l;->SHORT:LGb/l;

    new-instance v11, LGb/l;

    const-string v1, "Int"

    const-string v2, "INT"

    const/4 v3, 0x4

    invoke-direct {v11, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, LGb/l;->INT:LGb/l;

    new-instance v12, LGb/l;

    const-string v1, "Float"

    const-string v2, "FLOAT"

    const/4 v3, 0x5

    invoke-direct {v12, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, LGb/l;->FLOAT:LGb/l;

    new-instance v13, LGb/l;

    const-string v1, "Long"

    const-string v2, "LONG"

    const/4 v3, 0x6

    invoke-direct {v13, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, LGb/l;->LONG:LGb/l;

    new-instance v14, LGb/l;

    const-string v1, "Double"

    const-string v2, "DOUBLE"

    const/4 v3, 0x7

    invoke-direct {v14, v2, v3, v1}, LGb/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, LGb/l;->DOUBLE:LGb/l;

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    filled-new-array/range {v0 .. v7}, [LGb/l;

    move-result-object v0

    sput-object v0, LGb/l;->$VALUES:[LGb/l;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LGb/l;->$ENTRIES:Llb/a;

    new-instance v0, LGb/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LGb/l;->Companion:LGb/k;

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v13

    move-object v10, v14

    filled-new-array/range {v4 .. v10}, [LGb/l;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LGb/l;->NUMBER_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    iput-object p1, p0, LGb/l;->typeName:Lhc/f;

    const-string p1, "Array"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p1

    iput-object p1, p0, LGb/l;->arrayTypeName:Lhc/f;

    sget-object p1, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance p2, LGb/j;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, LGb/j;-><init>(LGb/l;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p2

    iput-object p2, p0, LGb/l;->typeFqName$delegate:Ldb/f;

    new-instance p2, LGb/j;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, LGb/j;-><init>(LGb/l;I)V

    invoke-static {p1, p2}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object p1

    iput-object p1, p0, LGb/l;->arrayTypeFqName$delegate:Ldb/f;

    return-void
.end method

.method public static a(LGb/l;)Lhc/c;
    .locals 1

    sget-object v0, LGb/q;->l:Lhc/c;

    iget-object p0, p0, LGb/l;->typeName:Lhc/f;

    invoke-virtual {v0, p0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object p0

    return-object p0
.end method

.method public static c(LGb/l;)Lhc/c;
    .locals 1

    sget-object v0, LGb/q;->l:Lhc/c;

    iget-object p0, p0, LGb/l;->arrayTypeName:Lhc/f;

    invoke-virtual {v0, p0}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LGb/l;
    .locals 1

    const-class v0, LGb/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LGb/l;

    return-object p0
.end method

.method public static values()[LGb/l;
    .locals 1

    sget-object v0, LGb/l;->$VALUES:[LGb/l;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LGb/l;

    return-object v0
.end method


# virtual methods
.method public final d()Lhc/c;
    .locals 0

    iget-object p0, p0, LGb/l;->arrayTypeFqName$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/c;

    return-object p0
.end method

.method public final e()Lhc/f;
    .locals 0

    iget-object p0, p0, LGb/l;->arrayTypeName:Lhc/f;

    return-object p0
.end method

.method public final f()Lhc/c;
    .locals 0

    iget-object p0, p0, LGb/l;->typeFqName$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhc/c;

    return-object p0
.end method

.method public final g()Lhc/f;
    .locals 0

    iget-object p0, p0, LGb/l;->typeName:Lhc/f;

    return-object p0
.end method
