.class public final Lcom/google/crypto/tink/shaded/protobuf/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/crypto/tink/shaded/protobuf/v;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/v;-><init>(I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Lcom/google/crypto/tink/shaded/protobuf/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/O;

    :try_start_0
    const-string v1, "com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/T;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/l;->b:Lcom/google/crypto/tink/shaded/protobuf/v;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/crypto/tink/shaded/protobuf/T;

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/v;->b:Lcom/google/crypto/tink/shaded/protobuf/v;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/O;->a:[Lcom/google/crypto/tink/shaded/protobuf/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/E;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/E;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/j;->a:Lcom/google/crypto/tink/shaded/protobuf/l;

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j;->u0(B)V

    return-void
.end method

.method public b(ILcom/google/crypto/tink/shaded/protobuf/h;)V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/g;

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/g;->r()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/g;->size()I

    move-result v0

    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/g;->d:[B

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->v0([BII)V

    return-void
.end method

.method public c(DI)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->y0(IJ)V

    return-void
.end method

.method public d(II)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->A0(I)V

    return-void
.end method

.method public e(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->w0(II)V

    return-void
.end method

.method public f(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->y0(IJ)V

    return-void
.end method

.method public g(FI)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/j;->w0(II)V

    return-void
.end method

.method public h(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V
    .locals 1

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/a;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->a:Lcom/google/crypto/tink/shaded/protobuf/l;

    invoke-interface {p3, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->d(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    return-void
.end method

.method public i(II)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->A0(I)V

    return-void
.end method

.method public j(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->D0(IJ)V

    return-void
.end method

.method public k(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/f0;)V
    .locals 2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/a;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, p2

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z;

    iget v0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/f0;->h(Lcom/google/crypto/tink/shaded/protobuf/a;)I

    move-result v0

    iput v0, p1, Lcom/google/crypto/tink/shaded/protobuf/z;->memoizedSerializedSize:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/j;->a:Lcom/google/crypto/tink/shaded/protobuf/l;

    invoke-interface {p3, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/f0;->d(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/l;)V

    return-void
.end method

.method public l(II)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->w0(II)V

    return-void
.end method

.method public m(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->y0(IJ)V

    return-void
.end method

.method public n(II)V
    .locals 1

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    return-void
.end method

.method public o(IJ)V
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p2, v0

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->D0(IJ)V

    return-void
.end method

.method public p(II)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/j;->B0(II)V

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j;->C0(I)V

    return-void
.end method

.method public q(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/l;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/j;->D0(IJ)V

    return-void
.end method
