.class public abstract LV6/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Lc7/x0;)Lc7/C0;
    .locals 5

    invoke-static {}, Lc7/C0;->p()Lc7/z0;

    move-result-object v0

    invoke-virtual {p0}, Lc7/x0;->r()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/C0;

    invoke-static {v2, v1}, Lc7/C0;->m(Lc7/C0;I)V

    invoke-virtual {p0}, Lc7/x0;->q()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc7/w0;

    invoke-static {}, Lc7/B0;->r()Lc7/A0;

    move-result-object v2

    invoke-virtual {v1}, Lc7/w0;->q()Lc7/m0;

    move-result-object v3

    invoke-virtual {v3}, Lc7/m0;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/B0;

    invoke-static {v4, v3}, Lc7/B0;->m(Lc7/B0;Ljava/lang/String;)V

    invoke-virtual {v1}, Lc7/w0;->t()Lc7/n0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/B0;

    invoke-static {v4, v3}, Lc7/B0;->o(Lc7/B0;Lc7/n0;)V

    invoke-virtual {v1}, Lc7/w0;->s()Lc7/N0;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v4, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/B0;

    invoke-static {v4, v3}, Lc7/B0;->n(Lc7/B0;Lc7/N0;)V

    invoke-virtual {v1}, Lc7/w0;->r()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v3, v2, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v3, Lc7/B0;

    invoke-static {v3, v1}, Lc7/B0;->p(Lc7/B0;I)V

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v1

    check-cast v1, Lc7/B0;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/C0;

    invoke-static {v2, v1}, Lc7/C0;->n(Lc7/C0;Lc7/B0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/C0;

    return-object p0
.end method
