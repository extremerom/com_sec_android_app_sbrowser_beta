.class public final enum Lc7/N0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/B;


# static fields
.field private static final synthetic $VALUES:[Lc7/N0;

.field public static final enum CRUNCHY:Lc7/N0;

.field public static final CRUNCHY_VALUE:I = 0x4

.field public static final enum LEGACY:Lc7/N0;

.field public static final LEGACY_VALUE:I = 0x2

.field public static final enum RAW:Lc7/N0;

.field public static final RAW_VALUE:I = 0x3

.field public static final enum TINK:Lc7/N0;

.field public static final TINK_VALUE:I = 0x1

.field public static final enum UNKNOWN_PREFIX:Lc7/N0;

.field public static final UNKNOWN_PREFIX_VALUE:I

.field public static final enum UNRECOGNIZED:Lc7/N0;

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/C;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lc7/N0;

    const-string v1, "UNKNOWN_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc7/N0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc7/N0;->UNKNOWN_PREFIX:Lc7/N0;

    new-instance v1, Lc7/N0;

    const-string v2, "TINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lc7/N0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc7/N0;->TINK:Lc7/N0;

    new-instance v2, Lc7/N0;

    const-string v3, "LEGACY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lc7/N0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lc7/N0;->LEGACY:Lc7/N0;

    new-instance v3, Lc7/N0;

    const-string v4, "RAW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lc7/N0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc7/N0;->RAW:Lc7/N0;

    new-instance v4, Lc7/N0;

    const-string v5, "CRUNCHY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lc7/N0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lc7/N0;->CRUNCHY:Lc7/N0;

    new-instance v5, Lc7/N0;

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lc7/N0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc7/N0;->UNRECOGNIZED:Lc7/N0;

    filled-new-array/range {v0 .. v5}, [Lc7/N0;

    move-result-object v0

    sput-object v0, Lc7/N0;->$VALUES:[Lc7/N0;

    new-instance v0, Lz7/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc7/N0;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/C;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc7/N0;->value:I

    return-void
.end method

.method public static a(I)Lc7/N0;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lc7/N0;->CRUNCHY:Lc7/N0;

    return-object p0

    :cond_1
    sget-object p0, Lc7/N0;->RAW:Lc7/N0;

    return-object p0

    :cond_2
    sget-object p0, Lc7/N0;->LEGACY:Lc7/N0;

    return-object p0

    :cond_3
    sget-object p0, Lc7/N0;->TINK:Lc7/N0;

    return-object p0

    :cond_4
    sget-object p0, Lc7/N0;->UNKNOWN_PREFIX:Lc7/N0;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lc7/N0;
    .locals 1

    const-class v0, Lc7/N0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc7/N0;

    return-object p0
.end method

.method public static values()[Lc7/N0;
    .locals 1

    sget-object v0, Lc7/N0;->$VALUES:[Lc7/N0;

    invoke-virtual {v0}, [Lc7/N0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc7/N0;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    sget-object v0, Lc7/N0;->UNRECOGNIZED:Lc7/N0;

    if-eq p0, v0, :cond_0

    iget p0, p0, Lc7/N0;->value:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
