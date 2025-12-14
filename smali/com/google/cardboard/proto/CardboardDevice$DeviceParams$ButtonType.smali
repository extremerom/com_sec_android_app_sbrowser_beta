.class public final enum Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/proto/CardboardDevice$DeviceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType$ButtonTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

.field public static final enum INDIRECT_TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

.field public static final INDIRECT_TOUCH_VALUE:I = 0x3

.field public static final enum MAGNET:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

.field public static final MAGNET_VALUE:I = 0x1

.field public static final enum NONE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

.field public static final NONE_VALUE:I = 0x0

.field public static final enum TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

.field public static final TOUCH_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 4

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->NONE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    sget-object v1, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->MAGNET:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    sget-object v2, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    sget-object v3, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->INDIRECT_TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->NONE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    new-instance v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    const-string v1, "MAGNET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->MAGNET:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    new-instance v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    const-string v1, "TOUCH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    new-instance v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    const-string v1, "INDIRECT_TOUCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->INDIRECT_TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    invoke-static {}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->$values()[Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    move-result-object v0

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->$VALUES:[Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    new-instance v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType$1;

    invoke-direct {v0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType$1;-><init>()V

    sput-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->INDIRECT_TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->TOUCH:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->MAGNET:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->NONE:Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType$ButtonTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->forNumber(I)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 1

    const-class v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;
    .locals 1

    sget-object v0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->$VALUES:[Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    invoke-virtual {v0}, [Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/cardboard/proto/CardboardDevice$DeviceParams$ButtonType;->value:I

    return p0
.end method
