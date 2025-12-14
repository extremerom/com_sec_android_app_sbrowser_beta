.class public final enum Lcom/google/crypto/tink/shaded/protobuf/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/s;

.field public static final enum MAP:Lcom/google/crypto/tink/shaded/protobuf/s;

.field public static final enum PACKED_VECTOR:Lcom/google/crypto/tink/shaded/protobuf/s;

.field public static final enum SCALAR:Lcom/google/crypto/tink/shaded/protobuf/s;

.field public static final enum VECTOR:Lcom/google/crypto/tink/shaded/protobuf/s;


# instance fields
.field private final isList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/s;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/s;->SCALAR:Lcom/google/crypto/tink/shaded/protobuf/s;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/s;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/crypto/tink/shaded/protobuf/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/s;->VECTOR:Lcom/google/crypto/tink/shaded/protobuf/s;

    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/s;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/crypto/tink/shaded/protobuf/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/s;->PACKED_VECTOR:Lcom/google/crypto/tink/shaded/protobuf/s;

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/s;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/google/crypto/tink/shaded/protobuf/s;->MAP:Lcom/google/crypto/tink/shaded/protobuf/s;

    filled-new-array {v0, v1, v3, v4}, [Lcom/google/crypto/tink/shaded/protobuf/s;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/s;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/crypto/tink/shaded/protobuf/s;->isList:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/s;
    .locals 1

    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/s;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/s;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/s;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/s;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/s;

    return-object v0
.end method
