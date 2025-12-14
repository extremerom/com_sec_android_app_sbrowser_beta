.class public final enum LVa/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LVa/k;

.field public static final enum ABORTED:LVa/k;

.field public static final enum ALREADY_EXISTS:LVa/k;

.field public static final enum CANCELLED:LVa/k;

.field public static final enum DATA_LOSS:LVa/k;

.field public static final enum DEADLINE_EXCEEDED:LVa/k;

.field public static final enum FAILED_PRECONDITION:LVa/k;

.field public static final enum INTERNAL:LVa/k;

.field public static final enum INVALID_ARGUMENT:LVa/k;

.field public static final enum NOT_FOUND:LVa/k;

.field public static final enum OK:LVa/k;

.field public static final enum OUT_OF_RANGE:LVa/k;

.field public static final enum PERMISSION_DENIED:LVa/k;

.field public static final enum RESOURCE_EXHAUSTED:LVa/k;

.field public static final enum UNAUTHENTICATED:LVa/k;

.field public static final enum UNAVAILABLE:LVa/k;

.field public static final enum UNIMPLEMENTED:LVa/k;

.field public static final enum UNKNOWN:LVa/k;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, LVa/k;

    move-object v0, v1

    const-string v2, "OK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v1, LVa/k;->OK:LVa/k;

    new-instance v2, LVa/k;

    move-object v1, v2

    const-string v3, "CANCELLED"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v2, LVa/k;->CANCELLED:LVa/k;

    new-instance v3, LVa/k;

    move-object v2, v3

    const-string v4, "UNKNOWN"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v3, LVa/k;->UNKNOWN:LVa/k;

    new-instance v4, LVa/k;

    move-object v3, v4

    const-string v5, "INVALID_ARGUMENT"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v4, LVa/k;->INVALID_ARGUMENT:LVa/k;

    new-instance v5, LVa/k;

    move-object v4, v5

    const-string v6, "DEADLINE_EXCEEDED"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v5, LVa/k;->DEADLINE_EXCEEDED:LVa/k;

    new-instance v6, LVa/k;

    move-object v5, v6

    const-string v7, "NOT_FOUND"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v6, LVa/k;->NOT_FOUND:LVa/k;

    new-instance v7, LVa/k;

    move-object v6, v7

    const-string v8, "ALREADY_EXISTS"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v7, LVa/k;->ALREADY_EXISTS:LVa/k;

    new-instance v8, LVa/k;

    move-object v7, v8

    const-string v9, "PERMISSION_DENIED"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v8, LVa/k;->PERMISSION_DENIED:LVa/k;

    new-instance v9, LVa/k;

    move-object v8, v9

    const-string v10, "RESOURCE_EXHAUSTED"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v9, LVa/k;->RESOURCE_EXHAUSTED:LVa/k;

    new-instance v10, LVa/k;

    move-object v9, v10

    const-string v11, "FAILED_PRECONDITION"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v10, LVa/k;->FAILED_PRECONDITION:LVa/k;

    new-instance v11, LVa/k;

    move-object v10, v11

    const-string v12, "ABORTED"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v11, LVa/k;->ABORTED:LVa/k;

    new-instance v12, LVa/k;

    move-object v11, v12

    const-string v13, "OUT_OF_RANGE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v12, LVa/k;->OUT_OF_RANGE:LVa/k;

    new-instance v13, LVa/k;

    move-object v12, v13

    const-string v14, "UNIMPLEMENTED"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v13, LVa/k;->UNIMPLEMENTED:LVa/k;

    new-instance v14, LVa/k;

    move-object v13, v14

    const-string v15, "INTERNAL"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v14, LVa/k;->INTERNAL:LVa/k;

    new-instance v0, LVa/k;

    move-object v14, v0

    const-string v15, "UNAVAILABLE"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, LVa/k;->UNAVAILABLE:LVa/k;

    new-instance v0, LVa/k;

    move-object v15, v0

    const-string v1, "DATA_LOSS"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, LVa/k;->DATA_LOSS:LVa/k;

    new-instance v0, LVa/k;

    move-object/from16 v16, v0

    const-string v1, "UNAUTHENTICATED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, LVa/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, LVa/k;->UNAUTHENTICATED:LVa/k;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [LVa/k;

    move-result-object v0

    sput-object v0, LVa/k;->$VALUES:[LVa/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LVa/k;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LVa/k;
    .locals 1

    const-class v0, LVa/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVa/k;

    return-object p0
.end method

.method public static values()[LVa/k;
    .locals 1

    sget-object v0, LVa/k;->$VALUES:[LVa/k;

    invoke-virtual {v0}, [LVa/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVa/k;

    return-object v0
.end method


# virtual methods
.method public final a()LVa/l;
    .locals 1

    sget-object v0, LVa/l;->b:Ljava/util/List;

    iget p0, p0, LVa/k;->value:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LVa/l;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, LVa/k;->value:I

    return p0
.end method
