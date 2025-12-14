.class Lcom/google/ar/core/ArImage;
.super Lcom/google/ar/core/dependencies/b;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/ar/core/Session;

.field public final b:J

.field public c:J


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ar/core/dependencies/b;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    iput-wide p2, p0, Lcom/google/ar/core/ArImage;->c:J

    iget-wide p1, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide p1, p0, Lcom/google/ar/core/ArImage;->b:J

    return-void
.end method

.method private native nativeClose(JJ)V
.end method

.method private native nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;
.end method

.method private native nativeGetFormat(JJ)I
.end method

.method private native nativeGetHeight(JJ)I
.end method

.method private native nativeGetNumberOfPlanes(JJ)I
.end method

.method private native nativeGetPixelStride(JJI)I
.end method

.method private native nativeGetRowStride(JJI)I
.end method

.method private native nativeGetTimestamp(JJ)J
.end method

.method private native nativeGetWidth(JJ)I
.end method

.method public static native nativeLoadSymbols()V
.end method


# virtual methods
.method public final synthetic a(JJI)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetRowStride(JJI)I

    move-result p0

    return p0
.end method

.method public final synthetic b(JJI)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetPixelStride(JJI)I

    move-result p0

    return p0
.end method

.method public final synthetic c(JJI)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/ar/core/ArImage;->nativeGetBuffer(JJI)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/ArImage;->b:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeClose(JJ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/ArImage;->c:J

    return-void
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/ar/core/ArImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ar/core/ArImage;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final getFormat()I
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetFormat(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getFormat()."

    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHeight()I
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetHeight(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getHeight()."

    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPlanes()[Landroid/media/Image$Plane;
    .locals 6

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetNumberOfPlanes(JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-array v1, v0, [Lcom/google/ar/core/y;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/google/ar/core/y;

    iget-wide v4, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/google/ar/core/y;-><init>(Lcom/google/ar/core/ArImage;JI)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getPlanes()."

    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getTimestamp()J
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getTimestamp()."

    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getWidth()I
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/ArImage;->a:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/ArImage;->c:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/ArImage;->nativeGetWidth(JJ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v0, "Unknown error in ArImage.getWidth()."

    invoke-direct {p0, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is a read-only image."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setTimestamp(J)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is a read-only image."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
