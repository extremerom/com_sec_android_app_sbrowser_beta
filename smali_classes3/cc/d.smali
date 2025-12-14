.class public final enum Lcc/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/d;

.field public static final enum ANNOTATION:Lcc/d;

.field public static final enum ARRAY:Lcc/d;

.field public static final enum BOOLEAN:Lcc/d;

.field public static final enum BYTE:Lcc/d;

.field public static final enum CHAR:Lcc/d;

.field public static final enum CLASS:Lcc/d;

.field public static final enum DOUBLE:Lcc/d;

.field public static final enum ENUM:Lcc/d;

.field public static final enum FLOAT:Lcc/d;

.field public static final enum INT:Lcc/d;

.field public static final enum LONG:Lcc/d;

.field public static final enum SHORT:Lcc/d;

.field public static final enum STRING:Lcc/d;

.field private static internalValueMap:Lic/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic/r;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcc/d;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/d;->BYTE:Lcc/d;

    new-instance v1, Lcc/d;

    const-string v2, "CHAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/d;->CHAR:Lcc/d;

    new-instance v2, Lcc/d;

    const-string v3, "SHORT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/d;->SHORT:Lcc/d;

    new-instance v3, Lcc/d;

    const-string v4, "INT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcc/d;->INT:Lcc/d;

    new-instance v4, Lcc/d;

    const-string v5, "LONG"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcc/d;->LONG:Lcc/d;

    new-instance v5, Lcc/d;

    const-string v6, "FLOAT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcc/d;->FLOAT:Lcc/d;

    new-instance v6, Lcc/d;

    const-string v7, "DOUBLE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcc/d;->DOUBLE:Lcc/d;

    new-instance v7, Lcc/d;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcc/d;->BOOLEAN:Lcc/d;

    new-instance v8, Lcc/d;

    const-string v9, "STRING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcc/d;->STRING:Lcc/d;

    new-instance v9, Lcc/d;

    const-string v10, "CLASS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcc/d;->CLASS:Lcc/d;

    new-instance v10, Lcc/d;

    const-string v11, "ENUM"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcc/d;->ENUM:Lcc/d;

    new-instance v11, Lcc/d;

    const-string v12, "ANNOTATION"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcc/d;->ANNOTATION:Lcc/d;

    new-instance v12, Lcc/d;

    const-string v13, "ARRAY"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcc/d;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcc/d;->ARRAY:Lcc/d;

    filled-new-array/range {v0 .. v12}, [Lcc/d;

    move-result-object v0

    sput-object v0, Lcc/d;->$VALUES:[Lcc/d;

    new-instance v0, LE5/v;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Lcc/d;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/d;->value:I

    return-void
.end method

.method public static a(I)Lcc/d;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcc/d;->ARRAY:Lcc/d;

    return-object p0

    :pswitch_1
    sget-object p0, Lcc/d;->ANNOTATION:Lcc/d;

    return-object p0

    :pswitch_2
    sget-object p0, Lcc/d;->ENUM:Lcc/d;

    return-object p0

    :pswitch_3
    sget-object p0, Lcc/d;->CLASS:Lcc/d;

    return-object p0

    :pswitch_4
    sget-object p0, Lcc/d;->STRING:Lcc/d;

    return-object p0

    :pswitch_5
    sget-object p0, Lcc/d;->BOOLEAN:Lcc/d;

    return-object p0

    :pswitch_6
    sget-object p0, Lcc/d;->DOUBLE:Lcc/d;

    return-object p0

    :pswitch_7
    sget-object p0, Lcc/d;->FLOAT:Lcc/d;

    return-object p0

    :pswitch_8
    sget-object p0, Lcc/d;->LONG:Lcc/d;

    return-object p0

    :pswitch_9
    sget-object p0, Lcc/d;->INT:Lcc/d;

    return-object p0

    :pswitch_a
    sget-object p0, Lcc/d;->SHORT:Lcc/d;

    return-object p0

    :pswitch_b
    sget-object p0, Lcc/d;->CHAR:Lcc/d;

    return-object p0

    :pswitch_c
    sget-object p0, Lcc/d;->BYTE:Lcc/d;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/d;
    .locals 1

    const-class v0, Lcc/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/d;

    return-object p0
.end method

.method public static values()[Lcc/d;
    .locals 1

    sget-object v0, Lcc/d;->$VALUES:[Lcc/d;

    invoke-virtual {v0}, [Lcc/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/d;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/d;->value:I

    return p0
.end method
