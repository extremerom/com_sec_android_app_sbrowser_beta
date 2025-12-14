.class public Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile closed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NullOutputStream@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method private ensureOpen()V
    .locals 1

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;->closed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;->closed:Z

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;->TAG:Ljava/lang/String;

    const-string v0, "closed"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public write(I)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;->ensureOpen()V

    return-void
.end method

.method public write([BII)V
    .locals 3

    array-length p1, p1

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p1, :cond_0

    sub-int v0, p1, p3

    if-gt p2, v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/asr/io/NullOutputStream;->ensureOpen()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Range ["

    const-string v1, ", "

    const-string v2, " + "

    invoke-static {p2, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") out of bounds for length "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
