.class public final enum Lc7/b0;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/B;


# static fields
.field private static final synthetic $VALUES:[Lc7/b0;

.field public static final enum SHA1:Lc7/b0;

.field public static final SHA1_VALUE:I = 0x1

.field public static final enum SHA256:Lc7/b0;

.field public static final SHA256_VALUE:I = 0x3

.field public static final enum SHA384:Lc7/b0;

.field public static final SHA384_VALUE:I = 0x2

.field public static final enum SHA512:Lc7/b0;

.field public static final SHA512_VALUE:I = 0x4

.field public static final enum UNKNOWN_HASH:Lc7/b0;

.field public static final UNKNOWN_HASH_VALUE:I

.field public static final enum UNRECOGNIZED:Lc7/b0;

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

    new-instance v0, Lc7/b0;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc7/b0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc7/b0;->UNKNOWN_HASH:Lc7/b0;

    new-instance v1, Lc7/b0;

    const-string v2, "SHA1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lc7/b0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc7/b0;->SHA1:Lc7/b0;

    new-instance v2, Lc7/b0;

    const-string v3, "SHA384"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lc7/b0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lc7/b0;->SHA384:Lc7/b0;

    new-instance v3, Lc7/b0;

    const-string v4, "SHA256"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lc7/b0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc7/b0;->SHA256:Lc7/b0;

    new-instance v4, Lc7/b0;

    const-string v5, "SHA512"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lc7/b0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lc7/b0;->SHA512:Lc7/b0;

    new-instance v5, Lc7/b0;

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lc7/b0;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc7/b0;->UNRECOGNIZED:Lc7/b0;

    filled-new-array/range {v0 .. v5}, [Lc7/b0;

    move-result-object v0

    sput-object v0, Lc7/b0;->$VALUES:[Lc7/b0;

    new-instance v0, LO7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc7/b0;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/C;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lc7/b0;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc7/b0;
    .locals 1

    const-class v0, Lc7/b0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc7/b0;

    return-object p0
.end method

.method public static values()[Lc7/b0;
    .locals 1

    sget-object v0, Lc7/b0;->$VALUES:[Lc7/b0;

    invoke-virtual {v0}, [Lc7/b0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc7/b0;

    return-object v0
.end method
