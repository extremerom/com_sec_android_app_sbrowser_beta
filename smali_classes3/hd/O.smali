.class public final Lhd/O;
.super Lhd/Q;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lhd/D;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lhd/D;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhd/O;->a:Lhd/D;

    iput p3, p0, Lhd/O;->b:I

    iput-object p2, p0, Lhd/O;->c:[B

    iput p4, p0, Lhd/O;->d:I

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget p0, p0, Lhd/O;->b:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final contentType()Lhd/D;
    .locals 0

    iget-object p0, p0, Lhd/O;->a:Lhd/D;

    return-object p0
.end method

.method public final writeTo(Lwd/h;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lhd/O;->b:I

    iget-object v1, p0, Lhd/O;->c:[B

    iget p0, p0, Lhd/O;->d:I

    invoke-interface {p1, v1, p0, v0}, Lwd/h;->i0([BII)Lwd/h;

    return-void
.end method
