.class public final enum Lcom/google/crypto/tink/shaded/protobuf/H;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum BOOLEAN:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum BYTE_STRING:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum ENUM:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum FLOAT:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum INT:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum LONG:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum STRING:Lcom/google/crypto/tink/shaded/protobuf/H;

.field public static final enum VOID:Lcom/google/crypto/tink/shaded/protobuf/H;


# instance fields
.field private final boxedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    new-instance v6, Lcom/google/crypto/tink/shaded/protobuf/H;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    const-string v1, "VOID"

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v6, Lcom/google/crypto/tink/shaded/protobuf/H;->VOID:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/H;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v9, 0x1

    const-class v11, Ljava/lang/Integer;

    const-string v8, "INT"

    move-object v7, v1

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/H;->INT:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/H;

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/4 v15, 0x2

    const-class v17, Ljava/lang/Long;

    const-string v14, "LONG"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v2, Lcom/google/crypto/tink/shaded/protobuf/H;->LONG:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/H;

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v9, 0x3

    const-class v11, Ljava/lang/Float;

    const-string v8, "FLOAT"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/H;->FLOAT:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/H;

    sget-object v16, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    const/4 v15, 0x4

    const-class v17, Ljava/lang/Double;

    const-string v14, "DOUBLE"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v4, Lcom/google/crypto/tink/shaded/protobuf/H;->DOUBLE:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/H;

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x5

    const-class v11, Ljava/lang/Boolean;

    const-string v8, "BOOLEAN"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v5, Lcom/google/crypto/tink/shaded/protobuf/H;->BOOLEAN:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v19, Lcom/google/crypto/tink/shaded/protobuf/H;

    const/4 v15, 0x6

    const-class v16, Ljava/lang/String;

    const-string v14, "STRING"

    const-class v17, Ljava/lang/String;

    const-string v18, ""

    move-object/from16 v13, v19

    invoke-direct/range {v13 .. v18}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v19, Lcom/google/crypto/tink/shaded/protobuf/H;->STRING:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v13, Lcom/google/crypto/tink/shaded/protobuf/H;

    sget-object v12, Lcom/google/crypto/tink/shaded/protobuf/h;->b:Lcom/google/crypto/tink/shaded/protobuf/g;

    const-class v10, Lcom/google/crypto/tink/shaded/protobuf/h;

    const-class v11, Lcom/google/crypto/tink/shaded/protobuf/h;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v13, Lcom/google/crypto/tink/shaded/protobuf/H;->BYTE_STRING:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v14, Lcom/google/crypto/tink/shaded/protobuf/H;

    const-string v8, "ENUM"

    const/16 v9, 0x8

    const-class v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    move-object v7, v14

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v14, Lcom/google/crypto/tink/shaded/protobuf/H;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/H;

    new-instance v9, Lcom/google/crypto/tink/shaded/protobuf/H;

    const/16 v22, 0x9

    const-class v23, Ljava/lang/Object;

    const-string v21, "MESSAGE"

    const-class v24, Ljava/lang/Object;

    const/16 v25, 0x0

    move-object/from16 v20, v9

    invoke-direct/range {v20 .. v25}, Lcom/google/crypto/tink/shaded/protobuf/H;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V

    sput-object v9, Lcom/google/crypto/tink/shaded/protobuf/H;->MESSAGE:Lcom/google/crypto/tink/shaded/protobuf/H;

    move-object v0, v6

    move-object/from16 v6, v19

    move-object v7, v13

    move-object v8, v14

    filled-new-array/range {v0 .. v9}, [Lcom/google/crypto/tink/shaded/protobuf/H;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/H;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/H;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/H;->type:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/crypto/tink/shaded/protobuf/H;->boxedType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/crypto/tink/shaded/protobuf/H;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/H;
    .locals 1

    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/H;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/H;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/H;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/H;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/H;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/H;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/H;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/H;->boxedType:Ljava/lang/Class;

    return-object p0
.end method
