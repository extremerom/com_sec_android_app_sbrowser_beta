.class public final Lcom/google/android/gms/internal/vision/C0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/google/android/gms/internal/vision/k0;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/k0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/k0;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/C0;->b:Lcom/google/android/gms/internal/vision/k0;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/vision/D0;

    :try_start_0
    const-string v1, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/H0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/google/android/gms/internal/vision/C0;->b:Lcom/google/android/gms/internal/vision/k0;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/vision/H0;

    sget-object v3, Lcom/google/android/gms/internal/vision/k0;->b:Lcom/google/android/gms/internal/vision/k0;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/internal/vision/D0;->a:[Lcom/google/android/gms/internal/vision/H0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/vision/V;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/vision/V;->b:Lcom/google/android/gms/internal/vision/C0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "output"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(DI)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/V;->R(J)V

    return-void
.end method

.method public b(FI)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    const/4 v0, 0x5

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/V;->U(I)V

    return-void
.end method

.method public c(II)V
    .locals 1

    const/4 v0, 0x5

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/V;->U(I)V

    return-void
.end method

.method public d(IJ)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/V;->I(J)V

    return-void
.end method

.method public e(ILcom/google/android/gms/internal/vision/U;)V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/U;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/U;->p()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/U;->i()I

    move-result v0

    iget-object p2, p2, Lcom/google/android/gms/internal/vision/U;->b:[B

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/gms/internal/vision/V;->S([BII)V

    return-void
.end method

.method public f(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/vision/O;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vision/O;->c()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/vision/R0;->d(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/O;->b(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/V;->b:Lcom/google/android/gms/internal/vision/C0;

    invoke-interface {p3, p2, p0}, Lcom/google/android/gms/internal/vision/R0;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    return-void
.end method

.method public g(IZ)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/V;->F(B)V

    return-void
.end method

.method public h(II)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/V;->G(I)V

    return-void
.end method

.method public i(IJ)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/V;->R(J)V

    return-void
.end method

.method public j(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/R0;)V
    .locals 1

    check-cast p2, Lcom/google/android/gms/internal/vision/O;

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/V;->b:Lcom/google/android/gms/internal/vision/C0;

    invoke-interface {p3, p2, v0}, Lcom/google/android/gms/internal/vision/R0;->h(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/C0;)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    return-void
.end method

.method public k(II)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/V;->G(I)V

    return-void
.end method

.method public l(IJ)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/V;->I(J)V

    return-void
.end method

.method public m(II)V
    .locals 1

    const/4 v0, 0x5

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/V;->U(I)V

    return-void
.end method

.method public n(IJ)V
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/V;->R(J)V

    return-void
.end method

.method public o(II)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    return-void
.end method

.method public p(IJ)V
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p2, v0

    const/16 v2, 0x3f

    shr-long/2addr p2, v2

    xor-long/2addr p2, v0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/V;->I(J)V

    return-void
.end method

.method public q(II)V
    .locals 1

    shl-int/lit8 v0, p2, 0x1

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v0

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/V;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/V;->H(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/V;->M(I)V

    return-void
.end method
