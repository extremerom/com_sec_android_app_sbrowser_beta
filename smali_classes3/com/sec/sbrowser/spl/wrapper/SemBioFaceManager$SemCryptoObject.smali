.class public Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemCryptoObject"
.end annotation


# static fields
.field private static sCryptoObject:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

.field private static sGetFidoResultData:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->b()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/security/Signature;

    const-class v3, [B

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->sCryptoObject:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager;->b()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const-string v3, "getFidoResultData"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->sGetFidoResultData:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;[B)V
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->sCryptoObject:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "SemCryptoObject"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->sCryptoObject:Lcom/sec/sbrowser/spl/util/ReflectConstructor;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectConstructor;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "getFidoResultData"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->sGetFidoResultData:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBaseInstance()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public getFidoResultData()[B
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemBioFaceManager$SemCryptoObject;->sGetFidoResultData:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
