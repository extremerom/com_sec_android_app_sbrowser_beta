.class public final Lt0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:Lt0/p;

.field public static final d:Lt0/p;

.field public static final e:Lt0/k;

.field public static final f:[Lt0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    const/16 v0, 0x11

    const/4 v1, 0x6

    new-array v13, v1, [F

    fill-array-data v13, :array_0

    sput-object v13, Lt0/d;->a:[F

    new-array v14, v1, [F

    fill-array-data v14, :array_1

    sput-object v14, Lt0/d;->b:[F

    new-instance v15, Lt0/q;

    const-wide v9, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v11, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v3, 0x4003333333333333L    # 2.4

    const-wide v5, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v7, 0x3faab1232f514a03L    # 0.05213270142180095

    move-object v2, v15

    invoke-direct/range {v2 .. v12}, Lt0/q;-><init>(DDDDD)V

    new-instance v27, Lt0/q;

    const-wide v23, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v25, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v17, 0x400199999999999aL    # 2.2

    const-wide v19, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v21, 0x3faab1232f514a03L    # 0.05213270142180095

    move-object/from16 v16, v27

    invoke-direct/range {v16 .. v26}, Lt0/q;-><init>(DDDDD)V

    new-instance v16, Lt0/p;

    sget-object v17, Lt0/i;->d:Lt0/r;

    const/4 v7, 0x0

    const-string v3, "sRGB IEC61966-2.1"

    move-object/from16 v2, v16

    move-object v4, v13

    move-object/from16 v5, v17

    move-object v6, v15

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    sput-object v16, Lt0/d;->c:Lt0/p;

    new-instance v18, Lt0/p;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    const-string v3, "sRGB IEC61966-2.1 (Linear)"

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    move-object/from16 v2, v18

    invoke-direct/range {v2 .. v10}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;DFFI)V

    new-instance v19, Lt0/p;

    new-instance v7, Lf1/g;

    const/16 v2, 0x1c

    invoke-direct {v7, v2}, Lf1/g;-><init>(I)V

    new-instance v8, Lf1/g;

    const/16 v2, 0x1d

    invoke-direct {v8, v2}, Lf1/g;-><init>(I)V

    const v9, -0x40b374bc    # -0.799f

    const-string v3, "scRGB-nl IEC 61966-2-2:2003"

    const v10, 0x40198937    # 2.399f

    const/4 v12, 0x2

    const/4 v6, 0x0

    move-object/from16 v2, v19

    move-object v4, v13

    move-object/from16 v5, v17

    move-object v11, v15

    invoke-direct/range {v2 .. v12}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;[FLt0/h;Lt0/h;FFLt0/q;I)V

    new-instance v11, Lt0/p;

    const/high16 v8, -0x41000000    # -0.5f

    const-string v3, "scRGB IEC 61966-2-2:2003"

    const v9, 0x40eff7cf    # 7.499f

    const/4 v10, 0x3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;DFFI)V

    new-instance v12, Lt0/p;

    new-array v4, v1, [F

    fill-array-data v4, :array_2

    new-instance v6, Lt0/q;

    const-wide v35, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v37, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v29, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v31, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v33, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    move-object/from16 v28, v6

    invoke-direct/range {v28 .. v38}, Lt0/q;-><init>(DDDDD)V

    const/4 v7, 0x4

    const-string v3, "Rec. ITU-R BT.709-5"

    move-object v2, v12

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    new-instance v20, Lt0/p;

    new-array v4, v1, [F

    fill-array-data v4, :array_3

    new-instance v6, Lt0/q;

    const-wide v37, 0x3fb4d9e83e425aeeL    # 0.08145

    const-wide v31, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v33, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    move-object/from16 v28, v6

    invoke-direct/range {v28 .. v38}, Lt0/q;-><init>(DDDDD)V

    const/4 v7, 0x5

    const-string v3, "Rec. ITU-R BT.2020-1"

    move-object/from16 v2, v20

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    new-instance v21, Lt0/p;

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    new-instance v3, Lt0/r;

    const v4, 0x3ea0c49c    # 0.314f

    const v5, 0x3eb3b646    # 0.351f

    invoke-direct {v3, v4, v5}, Lt0/r;-><init>(FF)V

    const/16 v34, 0x0

    const-string v29, "SMPTE RP 431-2-2007 DCI (P3)"

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0x6

    const-wide v32, 0x4004cccccccccccdL    # 2.6

    move-object/from16 v28, v21

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    invoke-direct/range {v28 .. v36}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;DFFI)V

    new-instance v22, Lt0/p;

    new-array v4, v1, [F

    fill-array-data v4, :array_5

    const/4 v7, 0x7

    const-string v3, "Display P3"

    move-object/from16 v2, v22

    move-object/from16 v5, v17

    move-object v6, v15

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    new-instance v15, Lt0/p;

    sget-object v5, Lt0/i;->a:Lt0/r;

    new-instance v6, Lt0/q;

    const-wide v35, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v37, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v29, 0x4001c71c71c71c72L    # 2.2222222222222223

    const-wide v31, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v33, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    move-object/from16 v28, v6

    invoke-direct/range {v28 .. v38}, Lt0/q;-><init>(DDDDD)V

    const/16 v7, 0x8

    const-string v3, "NTSC (1953)"

    move-object v2, v15

    move-object v4, v14

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    new-instance v14, Lt0/p;

    new-array v4, v1, [F

    fill-array-data v4, :array_6

    new-instance v6, Lt0/q;

    move-object/from16 v28, v6

    invoke-direct/range {v28 .. v38}, Lt0/q;-><init>(DDDDD)V

    const/16 v7, 0x9

    const-string v3, "SMPTE-C RGB"

    move-object v2, v14

    move-object/from16 v5, v17

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    new-instance v23, Lt0/p;

    new-array v4, v1, [F

    fill-array-data v4, :array_7

    const/4 v8, 0x0

    const-string v3, "Adobe RGB (1998)"

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xa

    const-wide v6, 0x400199999999999aL    # 2.2

    move-object/from16 v2, v23

    invoke-direct/range {v2 .. v10}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;DFFI)V

    new-instance v8, Lt0/p;

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    sget-object v31, Lt0/i;->b:Lt0/r;

    new-instance v3, Lt0/q;

    const-wide/high16 v39, 0x3fb0000000000000L    # 0.0625

    const-wide v41, 0x3f9fff79c842fa51L    # 0.031248

    const-wide v33, 0x3ffccccccccccccdL    # 1.8

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    const-wide/16 v37, 0x0

    move-object/from16 v32, v3

    invoke-direct/range {v32 .. v42}, Lt0/q;-><init>(DDDDD)V

    const/16 v33, 0xb

    const-string v29, "ROMM RGB ISO 22028-2:2013"

    move-object/from16 v28, v8

    move-object/from16 v30, v2

    invoke-direct/range {v28 .. v33}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    new-instance v9, Lt0/p;

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    sget-object v31, Lt0/i;->c:Lt0/r;

    const v40, -0x38802000    # -65504.0f

    const-string v35, "SMPTE ST 2065-1:2012 ACES"

    const v41, 0x477fe000    # 65504.0f

    const/16 v42, 0xc

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v34, v9

    move-object/from16 v36, v2

    move-object/from16 v37, v31

    invoke-direct/range {v34 .. v42}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;DFFI)V

    new-instance v10, Lt0/p;

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    const v34, -0x38802000    # -65504.0f

    const-string v29, "Academy S-2014-004 ACEScg"

    const v35, 0x477fe000    # 65504.0f

    const/16 v36, 0xd

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-object/from16 v28, v10

    move-object/from16 v30, v2

    invoke-direct/range {v28 .. v36}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;DFFI)V

    new-instance v24, Lt0/j;

    sget-wide v39, Lt0/b;->b:J

    const-string v38, "Generic XYZ"

    const/16 v41, 0xe

    const/16 v42, 0x1

    move-object/from16 v37, v24

    invoke-direct/range {v37 .. v42}, Lt0/j;-><init>(Ljava/lang/String;JII)V

    new-instance v25, Lt0/j;

    sget-wide v6, Lt0/b;->c:J

    const-string v3, "Generic L*a*b*"

    const/16 v26, 0xf

    const/16 v28, 0x0

    move-object/from16 v2, v25

    move-wide v4, v6

    move-wide/from16 v43, v6

    move/from16 v6, v26

    move/from16 v7, v28

    invoke-direct/range {v2 .. v7}, Lt0/j;-><init>(Ljava/lang/String;JII)V

    new-instance v26, Lt0/p;

    const/16 v7, 0x10

    const-string v3, "None"

    move-object/from16 v2, v26

    move-object v4, v13

    move-object/from16 v5, v17

    move-object/from16 v6, v27

    invoke-direct/range {v2 .. v7}, Lt0/p;-><init>(Ljava/lang/String;[FLt0/r;Lt0/q;I)V

    sput-object v26, Lt0/d;->d:Lt0/p;

    new-instance v2, Lt0/k;

    const-string v3, "Oklab"

    move-wide/from16 v4, v43

    invoke-direct {v2, v3, v4, v5, v0}, Lt0/c;-><init>(Ljava/lang/String;JI)V

    sput-object v2, Lt0/d;->e:Lt0/k;

    const/16 v3, 0x12

    new-array v3, v3, [Lt0/c;

    const/4 v4, 0x0

    aput-object v16, v3, v4

    const/4 v4, 0x1

    aput-object v18, v3, v4

    const/4 v4, 0x2

    aput-object v19, v3, v4

    const/4 v4, 0x3

    aput-object v11, v3, v4

    const/4 v4, 0x4

    aput-object v12, v3, v4

    const/4 v4, 0x5

    aput-object v20, v3, v4

    aput-object v21, v3, v1

    const/4 v1, 0x7

    aput-object v22, v3, v1

    const/16 v1, 0x8

    aput-object v15, v3, v1

    const/16 v1, 0x9

    aput-object v14, v3, v1

    const/16 v1, 0xa

    aput-object v23, v3, v1

    const/16 v1, 0xb

    aput-object v8, v3, v1

    const/16 v1, 0xc

    aput-object v9, v3, v1

    const/16 v1, 0xd

    aput-object v10, v3, v1

    const/16 v1, 0xe

    aput-object v24, v3, v1

    const/16 v1, 0xf

    aput-object v25, v3, v1

    const/16 v1, 0x10

    aput-object v26, v3, v1

    aput-object v2, v3, v0

    sput-object v3, Lt0/d;->f:[Lt0/c;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    :array_2
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_3
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    :array_4
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_5
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_6
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    :array_7
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_8
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    :array_9
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    :array_a
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method
