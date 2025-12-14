.class public final enum Lcom/google/protobuf/DescriptorProtos$Edition;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$Edition$EditionVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/DescriptorProtos$Edition;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final enum EDITION_1_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_1_TEST_ONLY_VALUE:I = 0x1

.field public static final enum EDITION_2023:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2023_VALUE:I = 0x3e8

.field public static final enum EDITION_2024:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2024_VALUE:I = 0x3e9

.field public static final enum EDITION_2_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_2_TEST_ONLY_VALUE:I = 0x2

.field public static final enum EDITION_99997_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99997_TEST_ONLY_VALUE:I = 0x1869d

.field public static final enum EDITION_99998_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99998_TEST_ONLY_VALUE:I = 0x1869e

.field public static final enum EDITION_99999_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_99999_TEST_ONLY_VALUE:I = 0x1869f

.field public static final enum EDITION_LEGACY:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_LEGACY_VALUE:I = 0x384

.field public static final enum EDITION_MAX:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_MAX_VALUE:I = 0x7fffffff

.field public static final enum EDITION_PROTO2:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_PROTO2_VALUE:I = 0x3e6

.field public static final enum EDITION_PROTO3:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_PROTO3_VALUE:I = 0x3e7

.field public static final enum EDITION_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$Edition;

.field public static final EDITION_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/protobuf/DescriptorProtos$Edition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$Edition;

    const-string v1, "EDITION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v1, Lcom/google/protobuf/DescriptorProtos$Edition;

    const-string v2, "EDITION_LEGACY"

    const/4 v3, 0x1

    const/16 v4, 0x384

    invoke-direct {v1, v2, v3, v4}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_LEGACY:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v2, Lcom/google/protobuf/DescriptorProtos$Edition;

    const-string v4, "EDITION_PROTO2"

    const/4 v5, 0x2

    const/16 v6, 0x3e6

    invoke-direct {v2, v4, v5, v6}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_PROTO2:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v4, Lcom/google/protobuf/DescriptorProtos$Edition;

    const/16 v6, 0x3e7

    const-string v7, "EDITION_PROTO3"

    const/4 v8, 0x3

    invoke-direct {v4, v7, v8, v6}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_PROTO3:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v6, Lcom/google/protobuf/DescriptorProtos$Edition;

    const/16 v7, 0x3e8

    const-string v8, "EDITION_2023"

    const/4 v9, 0x4

    invoke-direct {v6, v8, v9, v7}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_2023:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v7, Lcom/google/protobuf/DescriptorProtos$Edition;

    const/16 v8, 0x3e9

    const-string v9, "EDITION_2024"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v10, v8}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_2024:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v8, Lcom/google/protobuf/DescriptorProtos$Edition;

    const-string v9, "EDITION_1_TEST_ONLY"

    const/4 v10, 0x6

    invoke-direct {v8, v9, v10, v3}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_1_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v9, Lcom/google/protobuf/DescriptorProtos$Edition;

    const-string v3, "EDITION_2_TEST_ONLY"

    const/4 v10, 0x7

    invoke-direct {v9, v3, v10, v5}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_2_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v10, Lcom/google/protobuf/DescriptorProtos$Edition;

    const v3, 0x1869d

    const-string v5, "EDITION_99997_TEST_ONLY"

    const/16 v11, 0x8

    invoke-direct {v10, v5, v11, v3}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_99997_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v11, Lcom/google/protobuf/DescriptorProtos$Edition;

    const v3, 0x1869e

    const-string v5, "EDITION_99998_TEST_ONLY"

    const/16 v12, 0x9

    invoke-direct {v11, v5, v12, v3}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_99998_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v12, Lcom/google/protobuf/DescriptorProtos$Edition;

    const v3, 0x1869f

    const-string v5, "EDITION_99999_TEST_ONLY"

    const/16 v13, 0xa

    invoke-direct {v12, v5, v13, v3}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_99999_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v13, Lcom/google/protobuf/DescriptorProtos$Edition;

    const v3, 0x7fffffff

    const-string v5, "EDITION_MAX"

    const/16 v14, 0xb

    invoke-direct {v13, v5, v14, v3}, Lcom/google/protobuf/DescriptorProtos$Edition;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_MAX:Lcom/google/protobuf/DescriptorProtos$Edition;

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    filled-new-array/range {v0 .. v11}, [Lcom/google/protobuf/DescriptorProtos$Edition;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$Edition;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$Edition;

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$Edition$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$Edition;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/DescriptorProtos$Edition;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/protobuf/DescriptorProtos$Edition;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x384

    if-eq p0, v0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_99999_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_99998_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_99997_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_2024:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_2023:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_PROTO3:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_PROTO2:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_MAX:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_LEGACY:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_2_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_1_TEST_ONLY:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/protobuf/DescriptorProtos$Edition;->EDITION_UNKNOWN:Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1869d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/DescriptorProtos$Edition;
    .locals 1

    const-class v0, Lcom/google/protobuf/DescriptorProtos$Edition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/DescriptorProtos$Edition;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$Edition;->$VALUES:[Lcom/google/protobuf/DescriptorProtos$Edition;

    invoke-virtual {v0}, [Lcom/google/protobuf/DescriptorProtos$Edition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/DescriptorProtos$Edition;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/DescriptorProtos$Edition;->value:I

    return p0
.end method
