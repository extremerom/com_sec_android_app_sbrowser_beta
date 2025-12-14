.class public enum Lic/M;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lic/M;

.field public static final enum BOOL:Lic/M;

.field public static final enum BYTES:Lic/M;

.field public static final enum DOUBLE:Lic/M;

.field public static final enum ENUM:Lic/M;

.field public static final enum FIXED32:Lic/M;

.field public static final enum FIXED64:Lic/M;

.field public static final enum FLOAT:Lic/M;

.field public static final enum GROUP:Lic/M;

.field public static final enum INT32:Lic/M;

.field public static final enum INT64:Lic/M;

.field public static final enum MESSAGE:Lic/M;

.field public static final enum SFIXED32:Lic/M;

.field public static final enum SFIXED64:Lic/M;

.field public static final enum SINT32:Lic/M;

.field public static final enum SINT64:Lic/M;

.field public static final enum STRING:Lic/M;

.field public static final enum UINT32:Lic/M;

.field public static final enum UINT64:Lic/M;


# instance fields
.field private final javaType:Lic/N;

.field private final wireType:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/16 v9, 0x8

    new-instance v10, Lic/M;

    sget-object v11, Lic/N;->DOUBLE:Lic/N;

    const-string v12, "DOUBLE"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v10, v12, v13, v11, v14}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v10, Lic/M;->DOUBLE:Lic/M;

    new-instance v11, Lic/M;

    sget-object v12, Lic/N;->FLOAT:Lic/N;

    const-string v15, "FLOAT"

    const/4 v0, 0x5

    invoke-direct {v11, v15, v14, v12, v0}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v11, Lic/M;->FLOAT:Lic/M;

    new-instance v12, Lic/M;

    sget-object v15, Lic/N;->LONG:Lic/N;

    const-string v1, "INT64"

    const/4 v2, 0x2

    invoke-direct {v12, v1, v2, v15, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v12, Lic/M;->INT64:Lic/M;

    new-instance v1, Lic/M;

    const-string v3, "UINT64"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v15, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v1, Lic/M;->UINT64:Lic/M;

    new-instance v3, Lic/M;

    sget-object v5, Lic/N;->INT:Lic/N;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v3, v6, v7, v5, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v3, Lic/M;->INT32:Lic/M;

    new-instance v6, Lic/M;

    const-string v7, "FIXED64"

    invoke-direct {v6, v7, v0, v15, v14}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v6, Lic/M;->FIXED64:Lic/M;

    new-instance v7, Lic/M;

    const-string v14, "FIXED32"

    const/4 v4, 0x6

    invoke-direct {v7, v14, v4, v5, v0}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v7, Lic/M;->FIXED32:Lic/M;

    new-instance v14, Lic/M;

    const/4 v4, 0x7

    sget-object v0, Lic/N;->BOOLEAN:Lic/N;

    const-string v8, "BOOL"

    invoke-direct {v14, v8, v4, v0, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v14, Lic/M;->BOOL:Lic/M;

    new-instance v0, Lic/I;

    sget-object v8, Lic/N;->STRING:Lic/N;

    const-string v4, "STRING"

    invoke-direct {v0, v4, v9, v8, v2}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v0, Lic/M;->STRING:Lic/M;

    new-instance v4, Lic/J;

    sget-object v8, Lic/N;->MESSAGE:Lic/N;

    const-string v9, "GROUP"

    const/16 v2, 0x9

    const/4 v13, 0x3

    invoke-direct {v4, v9, v2, v8, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v4, Lic/M;->GROUP:Lic/M;

    new-instance v2, Lic/K;

    const-string v9, "MESSAGE"

    move-object/from16 v17, v4

    const/16 v4, 0xa

    const/4 v13, 0x2

    invoke-direct {v2, v9, v4, v8, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v2, Lic/M;->MESSAGE:Lic/M;

    new-instance v4, Lic/L;

    sget-object v8, Lic/N;->BYTE_STRING:Lic/N;

    const-string v9, "BYTES"

    move-object/from16 v18, v2

    const/16 v2, 0xb

    invoke-direct {v4, v9, v2, v8, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v4, Lic/M;->BYTES:Lic/M;

    new-instance v2, Lic/M;

    const-string v8, "UINT32"

    const/4 v9, 0x0

    const/16 v13, 0xc

    invoke-direct {v2, v8, v13, v5, v9}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v2, Lic/M;->UINT32:Lic/M;

    new-instance v8, Lic/M;

    sget-object v13, Lic/N;->ENUM:Lic/N;

    move-object/from16 v19, v2

    const-string v2, "ENUM"

    move-object/from16 v20, v4

    const/16 v4, 0xd

    invoke-direct {v8, v2, v4, v13, v9}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v8, Lic/M;->ENUM:Lic/M;

    new-instance v2, Lic/M;

    const-string v4, "SFIXED32"

    const/4 v9, 0x5

    const/16 v13, 0xe

    invoke-direct {v2, v4, v13, v5, v9}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v2, Lic/M;->SFIXED32:Lic/M;

    new-instance v4, Lic/M;

    const-string v9, "SFIXED64"

    move-object/from16 v21, v2

    const/16 v2, 0xf

    const/4 v13, 0x1

    invoke-direct {v4, v9, v2, v15, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v4, Lic/M;->SFIXED64:Lic/M;

    new-instance v2, Lic/M;

    const-string v9, "SINT32"

    move-object/from16 v16, v4

    const/16 v4, 0x10

    const/4 v13, 0x0

    invoke-direct {v2, v9, v4, v5, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v2, Lic/M;->SINT32:Lic/M;

    new-instance v4, Lic/M;

    const-string v5, "SINT64"

    const/16 v9, 0x11

    invoke-direct {v4, v5, v9, v15, v13}, Lic/M;-><init>(Ljava/lang/String;ILic/N;I)V

    sput-object v4, Lic/M;->SINT64:Lic/M;

    const/16 v5, 0x12

    new-array v5, v5, [Lic/M;

    aput-object v10, v5, v13

    const/4 v9, 0x1

    aput-object v11, v5, v9

    const/4 v9, 0x2

    aput-object v12, v5, v9

    const/4 v9, 0x3

    aput-object v1, v5, v9

    const/4 v1, 0x4

    aput-object v3, v5, v1

    const/4 v1, 0x5

    aput-object v6, v5, v1

    const/4 v1, 0x6

    aput-object v7, v5, v1

    const/4 v1, 0x7

    aput-object v14, v5, v1

    const/16 v1, 0x8

    aput-object v0, v5, v1

    const/16 v0, 0x9

    aput-object v17, v5, v0

    const/16 v0, 0xa

    aput-object v18, v5, v0

    const/16 v0, 0xb

    aput-object v20, v5, v0

    const/16 v0, 0xc

    aput-object v19, v5, v0

    const/16 v0, 0xd

    aput-object v8, v5, v0

    const/16 v0, 0xe

    aput-object v21, v5, v0

    const/16 v0, 0xf

    aput-object v16, v5, v0

    const/16 v0, 0x10

    aput-object v2, v5, v0

    const/16 v0, 0x11

    aput-object v4, v5, v0

    sput-object v5, Lic/M;->$VALUES:[Lic/M;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILic/N;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lic/M;->javaType:Lic/N;

    iput p4, p0, Lic/M;->wireType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lic/M;
    .locals 1

    const-class v0, Lic/M;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lic/M;

    return-object p0
.end method

.method public static values()[Lic/M;
    .locals 1

    sget-object v0, Lic/M;->$VALUES:[Lic/M;

    invoke-virtual {v0}, [Lic/M;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lic/M;

    return-object v0
.end method


# virtual methods
.method public final a()Lic/N;
    .locals 0

    iget-object p0, p0, Lic/M;->javaType:Lic/N;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lic/M;->wireType:I

    return p0
.end method

.method public d()Z
    .locals 0

    instance-of p0, p0, Lic/I;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
