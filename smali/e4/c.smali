.class public final Le4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le4/a;


# static fields
.field public static final b:Le4/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le4/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le4/c;-><init>(I)V

    sput-object v0, Le4/c;->b:Le4/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le4/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(LS3/C;LQ3/k;)LS3/C;
    .locals 3

    iget p0, p0, Le4/c;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-interface {p1}, LS3/C;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld4/b;

    iget-object p0, p0, Ld4/b;->a:LZ2/f;

    iget-object p0, p0, LZ2/f;->b:Ljava/lang/Object;

    check-cast p0, Ld4/f;

    iget-object p0, p0, Ld4/f;->a:LP3/d;

    iget-object p0, p0, LP3/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, LZ3/D;

    sget-object p2, Ll4/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, LU/v;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-direct {p2, v1, v2, v0}, LU/v;-><init>(IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget v0, p2, LU/v;->a:I

    if-nez v0, :cond_1

    iget-object v0, p2, LU/v;->c:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    iget p2, p2, LU/v;->b:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p2

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, p2

    :goto_1
    invoke-direct {p1, p0}, LZ3/D;-><init>([B)V

    :pswitch_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
