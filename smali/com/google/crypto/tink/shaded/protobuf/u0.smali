.class public final enum Lcom/google/crypto/tink/shaded/protobuf/u0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/u0;

.field public static final enum ASCENDING:Lcom/google/crypto/tink/shaded/protobuf/u0;

.field public static final enum DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/u0;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/u0;->ASCENDING:Lcom/google/crypto/tink/shaded/protobuf/u0;

    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/u0;

    const-string v2, "DESCENDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/u0;->DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/u0;

    filled-new-array {v0, v1}, [Lcom/google/crypto/tink/shaded/protobuf/u0;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/u0;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/u0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/u0;
    .locals 1

    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/u0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/u0;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/u0;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/u0;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/u0;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/u0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/u0;

    return-object v0
.end method
