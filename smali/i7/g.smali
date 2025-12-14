.class public final Li7/g;
.super Li7/z;
.source "SourceFile"


# instance fields
.field public final e:Ll7/c;

.field public f:[B


# direct methods
.method public constructor <init>(Ll7/c;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Li7/z;-><init>(II)V

    iput-object p1, p0, Li7/g;->e:Ll7/c;

    const/4 p1, 0x0

    iput-object p1, p0, Li7/g;->f:[B

    return-void
.end method


# virtual methods
.method public final a(Li7/f;)V
    .locals 0

    iget-object p0, p0, Li7/g;->e:Ll7/c;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/auth/j;->g(Li7/f;Ll7/a;)V

    return-void
.end method

.method public final c()Li7/q;
    .locals 0

    sget-object p0, Li7/q;->TYPE_ENCODED_ARRAY_ITEM:Li7/q;

    return-object p0
.end method

.method public final f(Li7/z;)I
    .locals 0

    check-cast p1, Li7/g;

    iget-object p0, p0, Li7/g;->e:Ll7/c;

    iget-object p1, p1, Li7/g;->e:Ll7/c;

    invoke-virtual {p0, p1}, Ll7/a;->d(Ll7/a;)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Li7/g;->e:Ll7/c;

    invoke-virtual {p0}, Ll7/c;->hashCode()I

    move-result p0

    return p0
.end method

.method public final l(Li7/y;I)V
    .locals 2

    new-instance p2, Ln7/b;

    invoke-direct {p2}, Ln7/b;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/auth/j;

    iget-object p1, p1, Li7/C;->b:Li7/f;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/auth/j;-><init>(Li7/f;Ln7/b;)V

    iget-object p1, p0, Li7/g;->e:Ll7/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/auth/j;->r(Ll7/c;Z)V

    iget p1, p2, Ln7/b;->c:I

    new-array v0, p1, [B

    iget-object p2, p2, Ln7/b;->b:[B

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Li7/g;->f:[B

    invoke-virtual {p0, p1}, Li7/z;->m(I)V

    return-void
.end method

.method public final n(Li7/f;Ln7/b;)V
    .locals 2

    invoke-virtual {p2}, Ln7/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Li7/z;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoded array"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ln7/b;->b(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/auth/j;-><init>(Li7/f;Ln7/b;)V

    iget-object p0, p0, Li7/g;->e:Ll7/c;

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/auth/j;->r(Ll7/c;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Li7/g;->f:[B

    invoke-virtual {p2, p0}, Ln7/b;->h([B)V

    :goto_0
    return-void
.end method
