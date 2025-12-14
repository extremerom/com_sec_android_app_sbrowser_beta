.class public final enum LG4/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LG4/w;

.field public static final enum BLUETOOTH:LG4/w;

.field public static final enum DUMMY:LG4/w;

.field public static final enum ETHERNET:LG4/w;

.field public static final enum MOBILE:LG4/w;

.field public static final enum MOBILE_CBS:LG4/w;

.field public static final enum MOBILE_DUN:LG4/w;

.field public static final enum MOBILE_EMERGENCY:LG4/w;

.field public static final enum MOBILE_FOTA:LG4/w;

.field public static final enum MOBILE_HIPRI:LG4/w;

.field public static final enum MOBILE_IA:LG4/w;

.field public static final enum MOBILE_IMS:LG4/w;

.field public static final enum MOBILE_MMS:LG4/w;

.field public static final enum MOBILE_SUPL:LG4/w;

.field public static final enum NONE:LG4/w;

.field public static final enum PROXY:LG4/w;

.field public static final enum VPN:LG4/w;

.field public static final enum WIFI:LG4/w;

.field public static final enum WIFI_P2P:LG4/w;

.field public static final enum WIMAX:LG4/w;

.field private static final valueMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "LG4/w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 56

    new-instance v15, LG4/w;

    move-object v0, v15

    const-string v1, "MOBILE"

    const/4 v14, 0x0

    invoke-direct {v15, v1, v14, v14}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v15, LG4/w;->MOBILE:LG4/w;

    new-instance v13, LG4/w;

    move-object v1, v13

    const-string v2, "WIFI"

    const/4 v12, 0x1

    invoke-direct {v13, v2, v12, v12}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v13, LG4/w;->WIFI:LG4/w;

    new-instance v11, LG4/w;

    move-object v2, v11

    const-string v3, "MOBILE_MMS"

    const/4 v10, 0x2

    invoke-direct {v11, v3, v10, v10}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v11, LG4/w;->MOBILE_MMS:LG4/w;

    new-instance v9, LG4/w;

    move-object v3, v9

    const-string v4, "MOBILE_SUPL"

    const/4 v8, 0x3

    invoke-direct {v9, v4, v8, v8}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v9, LG4/w;->MOBILE_SUPL:LG4/w;

    new-instance v7, LG4/w;

    move-object v4, v7

    const-string v5, "MOBILE_DUN"

    const/4 v6, 0x4

    invoke-direct {v7, v5, v6, v6}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v7, LG4/w;->MOBILE_DUN:LG4/w;

    new-instance v5, LG4/w;

    move-object/from16 v19, v5

    const-string v6, "MOBILE_HIPRI"

    move-object/from16 v20, v0

    const/4 v0, 0x5

    move-object/from16 v21, v1

    move-object/from16 v1, v19

    invoke-direct {v1, v6, v0, v0}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG4/w;->MOBILE_HIPRI:LG4/w;

    new-instance v6, LG4/w;

    move-object/from16 v19, v6

    const-string v0, "WIMAX"

    move-object/from16 v22, v1

    const/4 v1, 0x6

    move-object/from16 v23, v2

    move-object/from16 v2, v19

    invoke-direct {v2, v0, v1, v1}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v2, LG4/w;->WIMAX:LG4/w;

    new-instance v0, LG4/w;

    move-object/from16 v24, v7

    move-object v7, v0

    const-string v1, "BLUETOOTH"

    move-object/from16 v25, v2

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v2}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, LG4/w;->BLUETOOTH:LG4/w;

    new-instance v1, LG4/w;

    move-object v8, v1

    const-string v2, "DUMMY"

    move-object/from16 v26, v0

    const/16 v0, 0x8

    invoke-direct {v1, v2, v0, v0}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG4/w;->DUMMY:LG4/w;

    new-instance v2, LG4/w;

    move-object/from16 v27, v9

    move-object v9, v2

    const-string v0, "ETHERNET"

    move-object/from16 v28, v1

    const/16 v1, 0x9

    invoke-direct {v2, v0, v1, v1}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v2, LG4/w;->ETHERNET:LG4/w;

    new-instance v0, LG4/w;

    move-object v10, v0

    const-string v1, "MOBILE_FOTA"

    move-object/from16 v29, v2

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v2}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, LG4/w;->MOBILE_FOTA:LG4/w;

    new-instance v1, LG4/w;

    move-object/from16 v30, v11

    move-object v11, v1

    const-string v2, "MOBILE_IMS"

    move-object/from16 v31, v0

    const/16 v0, 0xb

    invoke-direct {v1, v2, v0, v0}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG4/w;->MOBILE_IMS:LG4/w;

    new-instance v2, LG4/w;

    move-object v12, v2

    const-string v0, "MOBILE_CBS"

    move-object/from16 v32, v1

    const/16 v1, 0xc

    invoke-direct {v2, v0, v1, v1}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v2, LG4/w;->MOBILE_CBS:LG4/w;

    new-instance v0, LG4/w;

    move-object/from16 v33, v13

    move-object v13, v0

    const-string v1, "WIFI_P2P"

    move-object/from16 v34, v2

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v2}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, LG4/w;->WIFI_P2P:LG4/w;

    new-instance v1, LG4/w;

    move-object v14, v1

    const-string v2, "MOBILE_IA"

    move-object/from16 v35, v0

    const/16 v0, 0xe

    invoke-direct {v1, v2, v0, v0}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG4/w;->MOBILE_IA:LG4/w;

    new-instance v2, LG4/w;

    move-object/from16 v36, v15

    move-object v15, v2

    const-string v0, "MOBILE_EMERGENCY"

    move-object/from16 v37, v1

    const/16 v1, 0xf

    invoke-direct {v2, v0, v1, v1}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v2, LG4/w;->MOBILE_EMERGENCY:LG4/w;

    new-instance v0, LG4/w;

    move-object/from16 v16, v0

    const-string v1, "PROXY"

    move-object/from16 v38, v2

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, LG4/w;->PROXY:LG4/w;

    new-instance v1, LG4/w;

    move-object/from16 v17, v1

    const-string v2, "VPN"

    move-object/from16 v39, v0

    const/16 v0, 0x11

    invoke-direct {v1, v2, v0, v0}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG4/w;->VPN:LG4/w;

    new-instance v2, LG4/w;

    move-object/from16 v18, v2

    const-string v0, "NONE"

    move-object/from16 v40, v1

    const/16 v1, 0x12

    move-object/from16 v41, v3

    const/4 v3, -0x1

    invoke-direct {v2, v0, v1, v3}, LG4/w;-><init>(Ljava/lang/String;II)V

    sput-object v2, LG4/w;->NONE:LG4/w;

    move-object/from16 v55, v2

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v42, v22

    move-object/from16 v2, v23

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move-object/from16 v45, v28

    move-object/from16 v46, v29

    move-object/from16 v47, v31

    move-object/from16 v48, v32

    move-object/from16 v49, v34

    move-object/from16 v50, v35

    move-object/from16 v51, v37

    move-object/from16 v52, v38

    move-object/from16 v53, v39

    move-object/from16 v54, v40

    move-object/from16 v3, v41

    filled-new-array/range {v0 .. v18}, [LG4/w;

    move-result-object v0

    sput-object v0, LG4/w;->$VALUES:[LG4/w;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, LG4/w;->valueMap:Landroid/util/SparseArray;

    move-object/from16 v1, v36

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v33

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v30

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v27

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v24

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v42

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v43

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v44

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v45

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v46

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v47

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v48

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v49

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v50

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v51

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v52

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v53

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v54

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v55

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LG4/w;->value:I

    return-void
.end method

.method public static a(I)LG4/w;
    .locals 1

    sget-object v0, LG4/w;->valueMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG4/w;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LG4/w;
    .locals 1

    const-class v0, LG4/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LG4/w;

    return-object p0
.end method

.method public static values()[LG4/w;
    .locals 1

    sget-object v0, LG4/w;->$VALUES:[LG4/w;

    invoke-virtual {v0}, [LG4/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG4/w;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, LG4/w;->value:I

    return p0
.end method
