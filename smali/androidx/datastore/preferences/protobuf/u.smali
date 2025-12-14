.class public final enum Landroidx/datastore/preferences/protobuf/u;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/u;

.field public static final enum BOOL:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum BOOL_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum BYTES:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum BYTES_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum DOUBLE:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum ENUM_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FIXED32:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FIXED32_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FIXED64:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FIXED64_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FLOAT:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FLOAT_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum GROUP:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum GROUP_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum INT32:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum INT32_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum INT64:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum INT64_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum MAP:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum MESSAGE:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SFIXED32:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SFIXED64:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SINT32:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SINT32_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SINT64:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SINT64_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum STRING:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum STRING_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum UINT32:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum UINT32_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum UINT64:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum UINT64_LIST:Landroidx/datastore/preferences/protobuf/u;

.field public static final enum UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

.field private static final VALUES:[Landroidx/datastore/preferences/protobuf/u;


# instance fields
.field private final collection:Landroidx/datastore/preferences/protobuf/t;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Landroidx/datastore/preferences/protobuf/G;

.field private final primitiveScalar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 65

    new-instance v7, Landroidx/datastore/preferences/protobuf/u;

    move-object v6, v7

    sget-object v24, Landroidx/datastore/preferences/protobuf/t;->SCALAR:Landroidx/datastore/preferences/protobuf/t;

    sget-object v42, Landroidx/datastore/preferences/protobuf/G;->DOUBLE:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object/from16 v4, v24

    move-object/from16 v5, v42

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v7, Landroidx/datastore/preferences/protobuf/u;->DOUBLE:Landroidx/datastore/preferences/protobuf/u;

    new-instance v8, Landroidx/datastore/preferences/protobuf/u;

    move-object v7, v8

    sget-object v43, Landroidx/datastore/preferences/protobuf/G;->FLOAT:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "FLOAT"

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v8

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v8, Landroidx/datastore/preferences/protobuf/u;->FLOAT:Landroidx/datastore/preferences/protobuf/u;

    new-instance v9, Landroidx/datastore/preferences/protobuf/u;

    move-object v8, v9

    sget-object v55, Landroidx/datastore/preferences/protobuf/G;->LONG:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "INT64"

    const/4 v2, 0x2

    const/4 v3, 0x2

    move-object v0, v9

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v9, Landroidx/datastore/preferences/protobuf/u;->INT64:Landroidx/datastore/preferences/protobuf/u;

    new-instance v10, Landroidx/datastore/preferences/protobuf/u;

    move-object v9, v10

    const/4 v2, 0x3

    const/4 v3, 0x3

    const-string v1, "UINT64"

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v10, Landroidx/datastore/preferences/protobuf/u;->UINT64:Landroidx/datastore/preferences/protobuf/u;

    new-instance v11, Landroidx/datastore/preferences/protobuf/u;

    move-object v10, v11

    sget-object v54, Landroidx/datastore/preferences/protobuf/G;->INT:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "INT32"

    const/4 v2, 0x4

    const/4 v3, 0x4

    move-object v0, v11

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v11, Landroidx/datastore/preferences/protobuf/u;->INT32:Landroidx/datastore/preferences/protobuf/u;

    new-instance v12, Landroidx/datastore/preferences/protobuf/u;

    move-object v11, v12

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v1, "FIXED64"

    move-object v0, v12

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v12, Landroidx/datastore/preferences/protobuf/u;->FIXED64:Landroidx/datastore/preferences/protobuf/u;

    new-instance v13, Landroidx/datastore/preferences/protobuf/u;

    move-object v12, v13

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v1, "FIXED32"

    move-object v0, v13

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v13, Landroidx/datastore/preferences/protobuf/u;->FIXED32:Landroidx/datastore/preferences/protobuf/u;

    new-instance v14, Landroidx/datastore/preferences/protobuf/u;

    move-object v13, v14

    sget-object v49, Landroidx/datastore/preferences/protobuf/G;->BOOLEAN:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    move-object v0, v14

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v14, Landroidx/datastore/preferences/protobuf/u;->BOOL:Landroidx/datastore/preferences/protobuf/u;

    new-instance v15, Landroidx/datastore/preferences/protobuf/u;

    move-object v14, v15

    sget-object v33, Landroidx/datastore/preferences/protobuf/G;->STRING:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "STRING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    move-object v0, v15

    move-object/from16 v5, v33

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v15, Landroidx/datastore/preferences/protobuf/u;->STRING:Landroidx/datastore/preferences/protobuf/u;

    new-instance v16, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v15, v16

    sget-object v56, Landroidx/datastore/preferences/protobuf/G;->MESSAGE:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "MESSAGE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    move-object/from16 v0, v16

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v16, Landroidx/datastore/preferences/protobuf/u;->MESSAGE:Landroidx/datastore/preferences/protobuf/u;

    new-instance v17, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v16, v17

    sget-object v35, Landroidx/datastore/preferences/protobuf/G;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "BYTES"

    const/16 v2, 0xa

    const/16 v3, 0xa

    move-object/from16 v0, v17

    move-object/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v17, Landroidx/datastore/preferences/protobuf/u;->BYTES:Landroidx/datastore/preferences/protobuf/u;

    new-instance v18, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v17, v18

    const/16 v2, 0xb

    const/16 v3, 0xb

    const-string v1, "UINT32"

    move-object/from16 v0, v18

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v18, Landroidx/datastore/preferences/protobuf/u;->UINT32:Landroidx/datastore/preferences/protobuf/u;

    new-instance v19, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v18, v19

    sget-object v51, Landroidx/datastore/preferences/protobuf/G;->ENUM:Landroidx/datastore/preferences/protobuf/G;

    const-string v1, "ENUM"

    const/16 v2, 0xc

    const/16 v3, 0xc

    move-object/from16 v0, v19

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v19, Landroidx/datastore/preferences/protobuf/u;->ENUM:Landroidx/datastore/preferences/protobuf/u;

    new-instance v20, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v19, v20

    const/16 v2, 0xd

    const/16 v3, 0xd

    const-string v1, "SFIXED32"

    move-object/from16 v0, v20

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v20, Landroidx/datastore/preferences/protobuf/u;->SFIXED32:Landroidx/datastore/preferences/protobuf/u;

    new-instance v21, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v20, v21

    const/16 v2, 0xe

    const/16 v3, 0xe

    const-string v1, "SFIXED64"

    move-object/from16 v0, v21

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v21, Landroidx/datastore/preferences/protobuf/u;->SFIXED64:Landroidx/datastore/preferences/protobuf/u;

    new-instance v22, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v21, v22

    const/16 v2, 0xf

    const/16 v3, 0xf

    const-string v1, "SINT32"

    move-object/from16 v0, v22

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v22, Landroidx/datastore/preferences/protobuf/u;->SINT32:Landroidx/datastore/preferences/protobuf/u;

    new-instance v23, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v22, v23

    const/16 v2, 0x10

    const/16 v3, 0x10

    const-string v1, "SINT64"

    move-object/from16 v0, v23

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v23, Landroidx/datastore/preferences/protobuf/u;->SINT64:Landroidx/datastore/preferences/protobuf/u;

    new-instance v25, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v23, v25

    const/16 v2, 0x11

    const/16 v3, 0x11

    const-string v1, "GROUP"

    move-object/from16 v0, v25

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v25, Landroidx/datastore/preferences/protobuf/u;->GROUP:Landroidx/datastore/preferences/protobuf/u;

    new-instance v25, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v24, v25

    sget-object v57, Landroidx/datastore/preferences/protobuf/t;->VECTOR:Landroidx/datastore/preferences/protobuf/t;

    const-string v1, "DOUBLE_LIST"

    const/16 v2, 0x12

    const/16 v3, 0x12

    move-object/from16 v0, v25

    move-object/from16 v4, v57

    move-object/from16 v5, v42

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v25, Landroidx/datastore/preferences/protobuf/u;->DOUBLE_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v26, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v25, v26

    const/16 v2, 0x13

    const/16 v3, 0x13

    const-string v1, "FLOAT_LIST"

    move-object/from16 v0, v26

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v26, Landroidx/datastore/preferences/protobuf/u;->FLOAT_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v27, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v26, v27

    const/16 v2, 0x14

    const/16 v3, 0x14

    const-string v1, "INT64_LIST"

    move-object/from16 v0, v27

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v27, Landroidx/datastore/preferences/protobuf/u;->INT64_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v28, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v27, v28

    const/16 v2, 0x15

    const/16 v3, 0x15

    const-string v1, "UINT64_LIST"

    move-object/from16 v0, v28

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v28, Landroidx/datastore/preferences/protobuf/u;->UINT64_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v29, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v28, v29

    const/16 v2, 0x16

    const/16 v3, 0x16

    const-string v1, "INT32_LIST"

    move-object/from16 v0, v29

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v29, Landroidx/datastore/preferences/protobuf/u;->INT32_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v30, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v29, v30

    const/16 v2, 0x17

    const/16 v3, 0x17

    const-string v1, "FIXED64_LIST"

    move-object/from16 v0, v30

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v30, Landroidx/datastore/preferences/protobuf/u;->FIXED64_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v31, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v30, v31

    const/16 v2, 0x18

    const/16 v3, 0x18

    const-string v1, "FIXED32_LIST"

    move-object/from16 v0, v31

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v31, Landroidx/datastore/preferences/protobuf/u;->FIXED32_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v32, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v31, v32

    const/16 v2, 0x19

    const/16 v3, 0x19

    const-string v1, "BOOL_LIST"

    move-object/from16 v0, v32

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v32, Landroidx/datastore/preferences/protobuf/u;->BOOL_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v34, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v32, v34

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const-string v1, "STRING_LIST"

    move-object/from16 v0, v34

    move-object/from16 v5, v33

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v34, Landroidx/datastore/preferences/protobuf/u;->STRING_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v34, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v33, v34

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const-string v1, "MESSAGE_LIST"

    move-object/from16 v0, v34

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v34, Landroidx/datastore/preferences/protobuf/u;->MESSAGE_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v36, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v34, v36

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const-string v1, "BYTES_LIST"

    move-object/from16 v0, v36

    move-object/from16 v5, v35

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v36, Landroidx/datastore/preferences/protobuf/u;->BYTES_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v36, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v35, v36

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const-string v1, "UINT32_LIST"

    move-object/from16 v0, v36

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v36, Landroidx/datastore/preferences/protobuf/u;->UINT32_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v37, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v36, v37

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const-string v1, "ENUM_LIST"

    move-object/from16 v0, v37

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v37, Landroidx/datastore/preferences/protobuf/u;->ENUM_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v38, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v37, v38

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const-string v1, "SFIXED32_LIST"

    move-object/from16 v0, v38

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v38, Landroidx/datastore/preferences/protobuf/u;->SFIXED32_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v39, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v38, v39

    const/16 v2, 0x20

    const/16 v3, 0x20

    const-string v1, "SFIXED64_LIST"

    move-object/from16 v0, v39

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v39, Landroidx/datastore/preferences/protobuf/u;->SFIXED64_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v40, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v39, v40

    const/16 v2, 0x21

    const/16 v3, 0x21

    const-string v1, "SINT32_LIST"

    move-object/from16 v0, v40

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v40, Landroidx/datastore/preferences/protobuf/u;->SINT32_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v41, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v40, v41

    const/16 v2, 0x22

    const/16 v3, 0x22

    const-string v1, "SINT64_LIST"

    move-object/from16 v0, v41

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v41, Landroidx/datastore/preferences/protobuf/u;->SINT64_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v44, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v41, v44

    sget-object v58, Landroidx/datastore/preferences/protobuf/t;->PACKED_VECTOR:Landroidx/datastore/preferences/protobuf/t;

    const-string v1, "DOUBLE_LIST_PACKED"

    const/16 v2, 0x23

    const/16 v3, 0x23

    move-object/from16 v0, v44

    move-object/from16 v4, v58

    move-object/from16 v5, v42

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v44, Landroidx/datastore/preferences/protobuf/u;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v44, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v42, v44

    const/16 v2, 0x24

    const/16 v3, 0x24

    const-string v1, "FLOAT_LIST_PACKED"

    move-object/from16 v0, v44

    move-object/from16 v5, v43

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v44, Landroidx/datastore/preferences/protobuf/u;->FLOAT_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v44, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v43, v44

    const/16 v2, 0x25

    const/16 v3, 0x25

    const-string v1, "INT64_LIST_PACKED"

    move-object/from16 v0, v44

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v44, Landroidx/datastore/preferences/protobuf/u;->INT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v45, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v44, v45

    const/16 v2, 0x26

    const/16 v3, 0x26

    const-string v1, "UINT64_LIST_PACKED"

    move-object/from16 v0, v45

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v45, Landroidx/datastore/preferences/protobuf/u;->UINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v46, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v45, v46

    const/16 v2, 0x27

    const/16 v3, 0x27

    const-string v1, "INT32_LIST_PACKED"

    move-object/from16 v0, v46

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v46, Landroidx/datastore/preferences/protobuf/u;->INT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v47, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v46, v47

    const/16 v2, 0x28

    const/16 v3, 0x28

    const-string v1, "FIXED64_LIST_PACKED"

    move-object/from16 v0, v47

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v47, Landroidx/datastore/preferences/protobuf/u;->FIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v48, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v47, v48

    const/16 v2, 0x29

    const/16 v3, 0x29

    const-string v1, "FIXED32_LIST_PACKED"

    move-object/from16 v0, v48

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v48, Landroidx/datastore/preferences/protobuf/u;->FIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v50, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v48, v50

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const-string v1, "BOOL_LIST_PACKED"

    move-object/from16 v0, v50

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v50, Landroidx/datastore/preferences/protobuf/u;->BOOL_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v50, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v49, v50

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    const-string v1, "UINT32_LIST_PACKED"

    move-object/from16 v0, v50

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v50, Landroidx/datastore/preferences/protobuf/u;->UINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v52, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v50, v52

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const-string v1, "ENUM_LIST_PACKED"

    move-object/from16 v0, v52

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v52, Landroidx/datastore/preferences/protobuf/u;->ENUM_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v52, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v51, v52

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const-string v1, "SFIXED32_LIST_PACKED"

    move-object/from16 v0, v52

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v52, Landroidx/datastore/preferences/protobuf/u;->SFIXED32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v53, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v52, v53

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const-string v1, "SFIXED64_LIST_PACKED"

    move-object/from16 v0, v53

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v53, Landroidx/datastore/preferences/protobuf/u;->SFIXED64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v59, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v53, v59

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const-string v1, "SINT32_LIST_PACKED"

    move-object/from16 v0, v59

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v59, Landroidx/datastore/preferences/protobuf/u;->SINT32_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v59, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v54, v59

    const/16 v2, 0x30

    const/16 v3, 0x30

    const-string v1, "SINT64_LIST_PACKED"

    move-object/from16 v0, v59

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v59, Landroidx/datastore/preferences/protobuf/u;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/u;

    new-instance v58, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v55, v58

    const/16 v2, 0x31

    const/16 v3, 0x31

    const-string v1, "GROUP_LIST"

    move-object/from16 v0, v58

    move-object/from16 v4, v57

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v58, Landroidx/datastore/preferences/protobuf/u;->GROUP_LIST:Landroidx/datastore/preferences/protobuf/u;

    new-instance v0, Landroidx/datastore/preferences/protobuf/u;

    move-object/from16 v56, v0

    sget-object v63, Landroidx/datastore/preferences/protobuf/t;->MAP:Landroidx/datastore/preferences/protobuf/t;

    sget-object v64, Landroidx/datastore/preferences/protobuf/G;->VOID:Landroidx/datastore/preferences/protobuf/G;

    const-string v60, "MAP"

    const/16 v61, 0x32

    const/16 v62, 0x32

    move-object/from16 v59, v0

    invoke-direct/range {v59 .. v64}, Landroidx/datastore/preferences/protobuf/u;-><init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/u;->MAP:Landroidx/datastore/preferences/protobuf/u;

    filled-new-array/range {v6 .. v56}, [Landroidx/datastore/preferences/protobuf/u;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/u;->$VALUES:[Landroidx/datastore/preferences/protobuf/u;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Landroidx/datastore/preferences/protobuf/u;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    invoke-static {}, Landroidx/datastore/preferences/protobuf/u;->values()[Landroidx/datastore/preferences/protobuf/u;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Landroidx/datastore/preferences/protobuf/u;

    sput-object v2, Landroidx/datastore/preferences/protobuf/u;->VALUES:[Landroidx/datastore/preferences/protobuf/u;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    sget-object v4, Landroidx/datastore/preferences/protobuf/u;->VALUES:[Landroidx/datastore/preferences/protobuf/u;

    iget v5, v3, Landroidx/datastore/preferences/protobuf/u;->id:I

    aput-object v3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILandroidx/datastore/preferences/protobuf/t;Landroidx/datastore/preferences/protobuf/G;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/datastore/preferences/protobuf/u;->id:I

    iput-object p4, p0, Landroidx/datastore/preferences/protobuf/u;->collection:Landroidx/datastore/preferences/protobuf/t;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/u;->javaType:Landroidx/datastore/preferences/protobuf/G;

    sget-object p1, Landroidx/datastore/preferences/protobuf/s;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/u;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/G;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/u;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Landroidx/datastore/preferences/protobuf/G;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/u;->elementType:Ljava/lang/Class;

    :goto_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/t;->SCALAR:Landroidx/datastore/preferences/protobuf/t;

    if-ne p4, p1, :cond_2

    sget-object p1, Landroidx/datastore/preferences/protobuf/s;->b:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p1, p1, p4

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iput-boolean p3, p0, Landroidx/datastore/preferences/protobuf/u;->primitiveScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/u;
    .locals 1

    const-class v0, Landroidx/datastore/preferences/protobuf/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/u;

    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/u;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/u;->$VALUES:[Landroidx/datastore/preferences/protobuf/u;

    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/datastore/preferences/protobuf/u;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/u;->id:I

    return p0
.end method
