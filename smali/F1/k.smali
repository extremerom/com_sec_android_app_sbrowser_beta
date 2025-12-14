.class public final enum LF1/k;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/A;


# static fields
.field private static final synthetic $VALUES:[LF1/k;

.field public static final enum ANDROID_REMOTE_VIEWS:LF1/k;

.field public static final ANDROID_REMOTE_VIEWS_VALUE:I = 0xb

.field public static final enum ARC_MEASUREMENT_INDICATOR:LF1/k;

.field public static final ARC_MEASUREMENT_INDICATOR_VALUE:I = 0x18

.field public static final enum ARC_PROGRESS_INDICATOR:LF1/k;

.field public static final ARC_PROGRESS_INDICATOR_VALUE:I = 0x17

.field public static final enum BOX:LF1/k;

.field public static final BOX_VALUE:I = 0x3

.field public static final enum BUTTON:LF1/k;

.field public static final BUTTON_VALUE:I = 0x8

.field public static final enum CHECK_BOX:LF1/k;

.field public static final CHECK_BOX_VALUE:I = 0x7

.field public static final enum CIRCULAR_PROGRESS_INDICATOR:LF1/k;

.field public static final CIRCULAR_PROGRESS_INDICATOR_VALUE:I = 0xf

.field public static final enum COLUMN:LF1/k;

.field public static final COLUMN_VALUE:I = 0x2

.field public static final enum IMAGE:LF1/k;

.field public static final enum IMAGE_BUTTON:LF1/k;

.field public static final IMAGE_BUTTON_VALUE:I = 0x19

.field public static final IMAGE_VALUE:I = 0xd

.field public static final enum LAZY_COLUMN:LF1/k;

.field public static final LAZY_COLUMN_VALUE:I = 0x5

.field public static final enum LAZY_VERTICAL_GRID:LF1/k;

.field public static final LAZY_VERTICAL_GRID_VALUE:I = 0x10

.field public static final enum LINEAR_PROGRESS_INDICATOR:LF1/k;

.field public static final LINEAR_PROGRESS_INDICATOR_VALUE:I = 0xe

.field public static final enum LIST_ITEM:LF1/k;

.field public static final LIST_ITEM_VALUE:I = 0x6

.field public static final enum RADIO_BUTTON:LF1/k;

.field public static final RADIO_BUTTON_VALUE:I = 0x13

.field public static final enum RADIO_COLUMN:LF1/k;

.field public static final RADIO_COLUMN_VALUE:I = 0x15

.field public static final enum RADIO_GROUP:LF1/k;

.field public static final RADIO_GROUP_VALUE:I = 0x12

.field public static final enum RADIO_ROW:LF1/k;

.field public static final RADIO_ROW_VALUE:I = 0x14

.field public static final enum REMOTE_VIEWS_ROOT:LF1/k;

.field public static final REMOTE_VIEWS_ROOT_VALUE:I = 0xc

.field public static final enum ROW:LF1/k;

.field public static final ROW_VALUE:I = 0x1

.field public static final enum SIZE_BOX:LF1/k;

.field public static final SIZE_BOX_VALUE:I = 0x16

.field public static final enum SPACER:LF1/k;

.field public static final SPACER_VALUE:I = 0x9

.field public static final enum STACKED_PROGRESS_INDICATOR:LF1/k;

.field public static final STACKED_PROGRESS_INDICATOR_VALUE:I = 0x1a

.field public static final enum SWITCH:LF1/k;

.field public static final SWITCH_VALUE:I = 0xa

.field public static final enum TEXT:LF1/k;

.field public static final TEXT_VALUE:I = 0x4

.field public static final enum UNKNOWN_TYPE:LF1/k;

.field public static final UNKNOWN_TYPE_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:LF1/k;

.field public static final enum VERTICAL_GRID_ITEM:LF1/k;

.field public static final VERTICAL_GRID_ITEM_VALUE:I = 0x11

.field private static final internalValueMap:Landroidx/glance/appwidget/protobuf/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/glance/appwidget/protobuf/B;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    new-instance v0, LF1/k;

    const-string v1, "UNKNOWN_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, LF1/k;->UNKNOWN_TYPE:LF1/k;

    new-instance v1, LF1/k;

    const-string v2, "ROW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, LF1/k;->ROW:LF1/k;

    new-instance v2, LF1/k;

    const-string v3, "COLUMN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v2, LF1/k;->COLUMN:LF1/k;

    new-instance v3, LF1/k;

    const-string v4, "BOX"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v3, LF1/k;->BOX:LF1/k;

    new-instance v4, LF1/k;

    const-string v5, "TEXT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v4, LF1/k;->TEXT:LF1/k;

    new-instance v5, LF1/k;

    const-string v6, "LAZY_COLUMN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v5, LF1/k;->LAZY_COLUMN:LF1/k;

    new-instance v6, LF1/k;

    const-string v7, "LIST_ITEM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v6, LF1/k;->LIST_ITEM:LF1/k;

    new-instance v7, LF1/k;

    const-string v8, "CHECK_BOX"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v7, LF1/k;->CHECK_BOX:LF1/k;

    new-instance v8, LF1/k;

    const-string v9, "BUTTON"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v8, LF1/k;->BUTTON:LF1/k;

    new-instance v9, LF1/k;

    const-string v10, "SPACER"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v9, LF1/k;->SPACER:LF1/k;

    new-instance v10, LF1/k;

    const-string v11, "SWITCH"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v10, LF1/k;->SWITCH:LF1/k;

    new-instance v11, LF1/k;

    const-string v12, "ANDROID_REMOTE_VIEWS"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v11, LF1/k;->ANDROID_REMOTE_VIEWS:LF1/k;

    new-instance v12, LF1/k;

    const-string v13, "REMOTE_VIEWS_ROOT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v12, LF1/k;->REMOTE_VIEWS_ROOT:LF1/k;

    new-instance v13, LF1/k;

    const-string v14, "IMAGE"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v13, LF1/k;->IMAGE:LF1/k;

    new-instance v14, LF1/k;

    const-string v15, "LINEAR_PROGRESS_INDICATOR"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->LINEAR_PROGRESS_INDICATOR:LF1/k;

    new-instance v15, LF1/k;

    const-string v13, "CIRCULAR_PROGRESS_INDICATOR"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14, v14}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->CIRCULAR_PROGRESS_INDICATOR:LF1/k;

    new-instance v14, LF1/k;

    const-string v13, "LAZY_VERTICAL_GRID"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15, v15}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->LAZY_VERTICAL_GRID:LF1/k;

    new-instance v15, LF1/k;

    const-string v13, "VERTICAL_GRID_ITEM"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14, v14}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->VERTICAL_GRID_ITEM:LF1/k;

    new-instance v14, LF1/k;

    const-string v13, "RADIO_GROUP"

    move-object/from16 v20, v15

    const/16 v15, 0x12

    invoke-direct {v14, v13, v15, v15}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->RADIO_GROUP:LF1/k;

    new-instance v15, LF1/k;

    const-string v13, "RADIO_BUTTON"

    move-object/from16 v21, v14

    const/16 v14, 0x13

    invoke-direct {v15, v13, v14, v14}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->RADIO_BUTTON:LF1/k;

    new-instance v14, LF1/k;

    const-string v13, "RADIO_ROW"

    move-object/from16 v22, v15

    const/16 v15, 0x14

    invoke-direct {v14, v13, v15, v15}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->RADIO_ROW:LF1/k;

    new-instance v15, LF1/k;

    const-string v13, "RADIO_COLUMN"

    move-object/from16 v23, v14

    const/16 v14, 0x15

    invoke-direct {v15, v13, v14, v14}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->RADIO_COLUMN:LF1/k;

    new-instance v14, LF1/k;

    const/16 v13, 0x16

    move-object/from16 v24, v15

    const-string v15, "SIZE_BOX"

    invoke-direct {v14, v15, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->SIZE_BOX:LF1/k;

    new-instance v15, LF1/k;

    const/16 v13, 0x17

    move-object/from16 v25, v14

    const-string v14, "ARC_PROGRESS_INDICATOR"

    invoke-direct {v15, v14, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->ARC_PROGRESS_INDICATOR:LF1/k;

    new-instance v14, LF1/k;

    const/16 v13, 0x18

    move-object/from16 v26, v15

    const-string v15, "ARC_MEASUREMENT_INDICATOR"

    invoke-direct {v14, v15, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->ARC_MEASUREMENT_INDICATOR:LF1/k;

    new-instance v15, LF1/k;

    const/16 v13, 0x19

    move-object/from16 v27, v14

    const-string v14, "IMAGE_BUTTON"

    invoke-direct {v15, v14, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->IMAGE_BUTTON:LF1/k;

    new-instance v14, LF1/k;

    const/16 v13, 0x1a

    move-object/from16 v28, v15

    const-string v15, "STACKED_PROGRESS_INDICATOR"

    invoke-direct {v14, v15, v13, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LF1/k;->STACKED_PROGRESS_INDICATOR:LF1/k;

    new-instance v15, LF1/k;

    const/4 v13, -0x1

    move-object/from16 v29, v14

    const-string v14, "UNRECOGNIZED"

    move-object/from16 v30, v12

    const/16 v12, 0x1b

    invoke-direct {v15, v14, v12, v13}, LF1/k;-><init>(Ljava/lang/String;II)V

    sput-object v15, LF1/k;->UNRECOGNIZED:LF1/k;

    move-object/from16 v12, v30

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v25

    move-object/from16 v25, v27

    move-object/from16 v27, v29

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v15

    move-object/from16 v15, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    filled-new-array/range {v0 .. v27}, [LF1/k;

    move-result-object v0

    sput-object v0, LF1/k;->$VALUES:[LF1/k;

    new-instance v0, LO7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF1/k;->internalValueMap:Landroidx/glance/appwidget/protobuf/B;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LF1/k;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF1/k;
    .locals 1

    const-class v0, LF1/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF1/k;

    return-object p0
.end method

.method public static values()[LF1/k;
    .locals 1

    sget-object v0, LF1/k;->$VALUES:[LF1/k;

    invoke-virtual {v0}, [LF1/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF1/k;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    sget-object v0, LF1/k;->UNRECOGNIZED:LF1/k;

    if-eq p0, v0, :cond_0

    iget p0, p0, LF1/k;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
