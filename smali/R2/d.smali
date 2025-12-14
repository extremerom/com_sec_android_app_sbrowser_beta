.class public final enum LR2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LR2/d;

.field public static final enum AES256_SIV:LR2/d;


# instance fields
.field private final mDeterministicAeadKeyTemplate:LV6/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LR2/d;

    sget-object v1, LV6/f;->TINK:LV6/f;

    invoke-static {}, Lc7/S;->o()Lc7/Q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v3, Lc7/S;

    invoke-static {v3}, Lc7/S;->m(Lc7/S;)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v2

    check-cast v2, Lc7/S;

    new-instance v3, LW6/d;

    const-class v4, LV6/d;

    const/16 v5, 0x9

    invoke-direct {v3, v4, v5}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v3}, [LW6/d;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    aget-object v6, v3, v5

    iget-object v7, v6, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, LW6/d;->a:Ljava/lang/Class;

    if-nez v7, :cond_0

    invoke-virtual {v4, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v3, v3, v5

    iget-object v3, v3, LW6/d;->a:Ljava/lang/Class;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/a;->c()[B

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.AesSivKey"

    invoke-static {v3, v2, v1}, LV6/g;->a(Ljava/lang/String;[BLV6/f;)LV6/g;

    move-result-object v1

    invoke-direct {v0, v1}, LR2/d;-><init>(LV6/g;)V

    sput-object v0, LR2/d;->AES256_SIV:LR2/d;

    filled-new-array {v0}, [LR2/d;

    move-result-object v0

    sput-object v0, LR2/d;->$VALUES:[LR2/d;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyTypeManager constructed with duplicate factories for primitive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(LV6/g;)V
    .locals 2

    const-string v0, "AES256_SIV"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, LR2/d;->mDeterministicAeadKeyTemplate:LV6/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR2/d;
    .locals 1

    const-class v0, LR2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR2/d;

    return-object p0
.end method

.method public static values()[LR2/d;
    .locals 1

    sget-object v0, LR2/d;->$VALUES:[LR2/d;

    invoke-virtual {v0}, [LR2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR2/d;

    return-object v0
.end method


# virtual methods
.method public final a()LV6/g;
    .locals 0

    iget-object p0, p0, LR2/d;->mDeterministicAeadKeyTemplate:LV6/g;

    return-object p0
.end method
