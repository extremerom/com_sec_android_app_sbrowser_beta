.class public final LW6/e;
.super LF3/f;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LJ2/i0;


# direct methods
.method public constructor <init>(LW6/f;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/m;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/y;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;BB)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/M0;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;BC)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/U0;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;BI)V
    .locals 0

    const/16 p2, 0x8

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/S;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;BS)V
    .locals 0

    const/16 p2, 0x9

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/g0;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;BZ)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/H0;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;C)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/G;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;I)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/L;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LW6/f;S)V
    .locals 0

    const/4 p2, 0x4

    iput p2, p0, LW6/e;->c:I

    iput-object p1, p0, LW6/e;->d:LJ2/i0;

    const-class p1, Lc7/X;

    const/4 p2, 0x5

    invoke-direct {p0, p2, p1}, LF3/f;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final G0(Lcom/google/crypto/tink/shaded/protobuf/a;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, LW6/e;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc7/g0;

    invoke-static {}, Lc7/e0;->t()Lc7/d0;

    move-result-object v0

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/e0;

    invoke-static {p0}, Lc7/e0;->m(Lc7/e0;)V

    invoke-virtual {p1}, Lc7/g0;->o()Lc7/i0;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/e0;

    invoke-static {v1, p0}, Lc7/e0;->n(Lc7/e0;Lc7/i0;)V

    invoke-virtual {p1}, Lc7/g0;->n()I

    move-result p0

    invoke-static {p0}, Ld7/p;->a(I)[B

    move-result-object p0

    array-length p1, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p1, Lc7/e0;

    invoke-static {p1, p0}, Lc7/e0;->o(Lc7/e0;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/e0;

    return-object p0

    :pswitch_0
    check-cast p1, Lc7/S;

    invoke-static {}, Lc7/O;->q()Lc7/N;

    move-result-object v0

    invoke-virtual {p1}, Lc7/S;->n()I

    move-result p1

    invoke-static {p1}, Ld7/p;->a(I)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/O;

    invoke-static {v1, p1}, Lc7/O;->n(Lc7/O;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/O;

    invoke-static {p0}, Lc7/O;->m(Lc7/O;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/O;

    return-object p0

    :pswitch_1
    check-cast p1, Lc7/U0;

    invoke-static {}, Lc7/S0;->q()Lc7/R0;

    move-result-object p1

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/S0;

    invoke-static {p0}, Lc7/S0;->m(Lc7/S0;)V

    const/16 p0, 0x20

    invoke-static {p0}, Ld7/p;->a(I)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v0, Lc7/S0;

    invoke-static {v0, p0}, Lc7/S0;->n(Lc7/S0;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/S0;

    return-object p0

    :pswitch_2
    check-cast p1, Lc7/M0;

    invoke-static {}, Lc7/K0;->q()Lc7/J0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/K0;

    invoke-static {v1, p1}, Lc7/K0;->n(Lc7/K0;Lc7/M0;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/K0;

    invoke-static {p0}, Lc7/K0;->m(Lc7/K0;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/K0;

    return-object p0

    :pswitch_3
    check-cast p1, Lc7/H0;

    invoke-static {}, Lc7/F0;->q()Lc7/E0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/F0;

    invoke-static {v1, p1}, Lc7/F0;->n(Lc7/F0;Lc7/H0;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/F0;

    invoke-static {p0}, Lc7/F0;->m(Lc7/F0;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/F0;

    return-object p0

    :pswitch_4
    check-cast p1, Lc7/X;

    invoke-static {}, Lc7/V;->q()Lc7/U;

    move-result-object p1

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/V;

    invoke-static {p0}, Lc7/V;->m(Lc7/V;)V

    const/16 p0, 0x20

    invoke-static {p0}, Ld7/p;->a(I)[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v0, Lc7/V;

    invoke-static {v0, p0}, Lc7/V;->n(Lc7/V;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/V;

    return-object p0

    :pswitch_5
    check-cast p1, Lc7/L;

    invoke-static {}, Lc7/J;->q()Lc7/I;

    move-result-object v0

    invoke-virtual {p1}, Lc7/L;->m()I

    move-result p1

    invoke-static {p1}, Ld7/p;->a(I)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/J;

    invoke-static {v1, p1}, Lc7/J;->n(Lc7/J;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/J;

    invoke-static {p0}, Lc7/J;->m(Lc7/J;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/J;

    return-object p0

    :pswitch_6
    check-cast p1, Lc7/G;

    invoke-static {}, Lc7/D;->q()Lc7/C;

    move-result-object v0

    invoke-virtual {p1}, Lc7/G;->n()I

    move-result p1

    invoke-static {p1}, Ld7/p;->a(I)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/D;

    invoke-static {v1, p1}, Lc7/D;->n(Lc7/D;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/D;

    invoke-static {p0}, Lc7/D;->m(Lc7/D;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/D;

    return-object p0

    :pswitch_7
    check-cast p1, Lc7/y;

    invoke-static {}, Lc7/w;->s()Lc7/v;

    move-result-object v0

    invoke-virtual {p1}, Lc7/y;->m()I

    move-result v1

    invoke-static {v1}, Ld7/p;->a(I)[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/w;

    invoke-static {v2, v1}, Lc7/w;->o(Lc7/w;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {p1}, Lc7/y;->n()Lc7/A;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v1, Lc7/w;

    invoke-static {v1, p1}, Lc7/w;->n(Lc7/w;Lc7/A;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v0, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/w;

    invoke-static {p0}, Lc7/w;->m(Lc7/w;)V

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/w;

    return-object p0

    :pswitch_8
    check-cast p1, Lc7/m;

    new-instance v0, LW6/d;

    const-class v1, Ld7/m;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v0}, [LW6/d;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "KeyTypeManager constructed with duplicate factories for primitive "

    if-ge v4, v2, :cond_1

    aget-object v6, v0, v4

    iget-object v7, v6, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, LW6/d;->a:Ljava/lang/Class;

    if-nez v7, :cond_0

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    array-length v2, v0

    if-lez v2, :cond_2

    aget-object v0, v0, v3

    iget-object v0, v0, LW6/d;->a:Ljava/lang/Class;

    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lc7/m;->m()Lc7/r;

    move-result-object v0

    invoke-static {}, Lc7/p;->t()Lc7/o;

    move-result-object v1

    invoke-virtual {v0}, Lc7/r;->o()Lc7/t;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/p;

    invoke-static {v4, v2}, Lc7/p;->n(Lc7/p;Lc7/t;)V

    invoke-virtual {v0}, Lc7/r;->n()I

    move-result v0

    invoke-static {v0}, Ld7/p;->a(I)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/p;

    invoke-static {v2, v0}, Lc7/p;->o(Lc7/p;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v0, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v0, Lc7/p;

    invoke-static {v0}, Lc7/p;->m(Lc7/p;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object v0

    check-cast v0, Lc7/p;

    new-instance v1, LW6/d;

    const-class v2, LV6/i;

    const/16 v4, 0xb

    invoke-direct {v1, v2, v4}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {v1}, [LW6/d;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v4, v1

    move v6, v3

    :goto_1
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    iget-object v8, v7, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v7, LW6/d;->a:Ljava/lang/Class;

    if-nez v8, :cond_3

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    array-length v4, v1

    if-lez v4, :cond_5

    aget-object v1, v1, v3

    iget-object v1, v1, LW6/d;->a:Ljava/lang/Class;

    :cond_5
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lc7/m;->n()Lc7/g0;

    move-result-object p1

    invoke-static {}, Lc7/e0;->t()Lc7/d0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/e0;

    invoke-static {v2}, Lc7/e0;->m(Lc7/e0;)V

    invoke-virtual {p1}, Lc7/g0;->o()Lc7/i0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v4, Lc7/e0;

    invoke-static {v4, v2}, Lc7/e0;->n(Lc7/e0;Lc7/i0;)V

    invoke-virtual {p1}, Lc7/g0;->n()I

    move-result p1

    invoke-static {p1}, Ld7/p;->a(I)[B

    move-result-object p1

    array-length v2, p1

    invoke-static {p1, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/h;->l([BII)Lcom/google/crypto/tink/shaded/protobuf/g;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/e0;

    invoke-static {v2, p1}, Lc7/e0;->o(Lc7/e0;Lcom/google/crypto/tink/shaded/protobuf/g;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p1

    check-cast p1, Lc7/e0;

    invoke-static {}, Lc7/k;->s()Lc7/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v2, Lc7/k;

    invoke-static {v2, v0}, Lc7/k;->n(Lc7/k;Lc7/p;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object v0, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast v0, Lc7/k;

    invoke-static {v0, p1}, Lc7/k;->o(Lc7/k;Lc7/e0;)V

    iget-object p0, p0, LW6/e;->d:LJ2/i0;

    check-cast p0, LW6/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->c()V

    iget-object p0, v1, Lcom/google/crypto/tink/shaded/protobuf/w;->b:Lcom/google/crypto/tink/shaded/protobuf/z;

    check-cast p0, Lc7/k;

    invoke-static {p0}, Lc7/k;->m(Lc7/k;)V

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/w;->a()Lcom/google/crypto/tink/shaded/protobuf/z;

    move-result-object p0

    check-cast p0, Lc7/k;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final O0(Lcom/google/crypto/tink/shaded/protobuf/h;)Lcom/google/crypto/tink/shaded/protobuf/a;
    .locals 0

    iget p0, p0, LW6/e;->c:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/g0;->p(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/g0;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/S;->p(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/S;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/U0;->m(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/U0;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/M0;->p(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/M0;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/H0;->o(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/H0;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/X;->m(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/X;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/L;->n(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/L;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/G;->p(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/G;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/y;->o(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/y;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/o;->a()Lcom/google/crypto/tink/shaded/protobuf/o;

    move-result-object p0

    invoke-static {p1, p0}, Lc7/m;->o(Lcom/google/crypto/tink/shaded/protobuf/h;Lcom/google/crypto/tink/shaded/protobuf/o;)Lc7/m;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final R0(Lcom/google/crypto/tink/shaded/protobuf/a;)V
    .locals 9

    iget p0, p0, LW6/e;->c:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lc7/g0;

    invoke-virtual {p1}, Lc7/g0;->n()I

    move-result p0

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    invoke-virtual {p1}, Lc7/g0;->o()Lc7/i0;

    move-result-object p0

    invoke-static {p0}, LW6/f;->x(Lc7/i0;)V

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Lc7/S;

    invoke-virtual {p1}, Lc7/S;->n()I

    move-result p0

    const/16 v0, 0x40

    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid key size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc7/S;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Valid keys must have 64 bytes."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    check-cast p1, Lc7/U0;

    return-void

    :pswitch_2
    check-cast p1, Lc7/M0;

    return-void

    :pswitch_3
    check-cast p1, Lc7/H0;

    return-void

    :pswitch_4
    check-cast p1, Lc7/X;

    return-void

    :pswitch_5
    check-cast p1, Lc7/L;

    invoke-virtual {p1}, Lc7/L;->m()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    return-void

    :pswitch_6
    check-cast p1, Lc7/G;

    invoke-virtual {p1}, Lc7/G;->n()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    return-void

    :pswitch_7
    check-cast p1, Lc7/y;

    invoke-virtual {p1}, Lc7/y;->m()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    invoke-virtual {p1}, Lc7/y;->n()Lc7/A;

    move-result-object p0

    invoke-virtual {p0}, Lc7/A;->n()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    invoke-virtual {p1}, Lc7/y;->n()Lc7/A;

    move-result-object p0

    invoke-virtual {p0}, Lc7/A;->n()I

    move-result p0

    const/16 p1, 0x10

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void

    :pswitch_8
    check-cast p1, Lc7/m;

    new-instance p0, LW6/d;

    const-class v0, Ld7/m;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {p0}, [LW6/d;

    move-result-object p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const-string v4, "KeyTypeManager constructed with duplicate factories for primitive "

    if-ge v3, v1, :cond_5

    aget-object v5, p0, v3

    iget-object v6, v5, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, v5, LW6/d;->a:Ljava/lang/Class;

    if-nez v6, :cond_4

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    array-length v1, p0

    if-lez v1, :cond_6

    aget-object p0, p0, v2

    iget-object p0, p0, LW6/d;->a:Ljava/lang/Class;

    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lc7/m;->m()Lc7/r;

    move-result-object p0

    invoke-virtual {p0}, Lc7/r;->n()I

    move-result v0

    invoke-static {v0}, Ld7/q;->a(I)V

    invoke-virtual {p0}, Lc7/r;->o()Lc7/t;

    move-result-object p0

    invoke-virtual {p0}, Lc7/t;->n()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lc7/t;->n()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_b

    new-instance p0, LW6/d;

    const-class v1, LV6/i;

    const/16 v3, 0xb

    invoke-direct {p0, v1, v3}, LW6/d;-><init>(Ljava/lang/Class;I)V

    filled-new-array {p0}, [LW6/d;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v3, p0

    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_8

    aget-object v6, p0, v5

    iget-object v7, v6, LW6/d;->a:Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v6, LW6/d;->a:Ljava/lang/Class;

    if-nez v7, :cond_7

    invoke-virtual {v1, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, p1}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    array-length v3, p0

    if-lez v3, :cond_9

    aget-object p0, p0, v2

    iget-object p0, p0, LW6/d;->a:Ljava/lang/Class;

    :cond_9
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p1}, Lc7/m;->n()Lc7/g0;

    move-result-object p0

    invoke-virtual {p0}, Lc7/g0;->n()I

    move-result v1

    if-lt v1, v0, :cond_a

    invoke-virtual {p0}, Lc7/g0;->o()Lc7/i0;

    move-result-object p0

    invoke-static {p0}, LW6/f;->x(Lc7/i0;)V

    invoke-virtual {p1}, Lc7/m;->m()Lc7/r;

    move-result-object p0

    invoke-virtual {p0}, Lc7/r;->n()I

    move-result p0

    invoke-static {p0}, Ld7/q;->a(I)V

    return-void

    :cond_a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "key too short"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid IV size"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
