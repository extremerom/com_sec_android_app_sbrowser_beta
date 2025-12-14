.class Lcom/samsung/android/sdk/smp/common/network/NetworkManager$JsonUtf8VolleyRequest;
.super Lcom/android/volley/toolbox/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/common/network/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonUtf8VolleyRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/toolbox/f;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;LN3/s;LN3/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LN3/s;",
            "LN3/r;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/volley/toolbox/f;-><init>(ILjava/lang/String;Ljava/lang/String;LN3/s;LN3/r;)V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public parseNetworkResponse(LN3/k;)LN3/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/k;",
            ")",
            "LN3/t;"
        }
    .end annotation

    :try_start_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, LN3/k;->b:[B

    iget-object v1, p1, LN3/k;->c:Ljava/util/Map;

    invoke-static {v1}, LG5/C;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/String;

    iget-object v0, p1, LN3/k;->b:[B

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, LG5/C;->b(LN3/k;)LN3/b;

    move-result-object p1

    new-instance v0, LN3/t;

    invoke-direct {v0, p0, p1}, LN3/t;-><init>(Ljava/lang/Object;LN3/b;)V

    return-object v0
.end method
