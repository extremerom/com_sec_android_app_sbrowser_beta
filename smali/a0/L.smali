.class public final La0/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lub/a;


# instance fields
.field public final synthetic a:I

.field public final b:La0/w0;

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(La0/w0;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La0/L;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/L;->b:La0/w0;

    iput p3, p0, La0/L;->c:I

    iput p2, p0, La0/L;->d:I

    iget p2, p1, La0/w0;->g:I

    iput p2, p0, La0/L;->e:I

    iget-boolean p0, p1, La0/w0;->f:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public constructor <init>(La0/w0;ILa0/M;La0/d;)V
    .locals 0

    const/4 p3, 0x1

    iput p3, p0, La0/L;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/L;->b:La0/w0;

    iput p2, p0, La0/L;->c:I

    iget p1, p1, La0/w0;->g:I

    iput p1, p0, La0/L;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, La0/L;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget v0, p0, La0/L;->d:I

    iget p0, p0, La0/L;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, La0/L;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget-object v0, p0, La0/L;->b:La0/w0;

    iget v1, v0, La0/w0;->g:I

    iget v2, p0, La0/L;->e:I

    if-ne v1, v2, :cond_0

    iget v1, p0, La0/L;->d:I

    iget-object v3, v0, La0/w0;->a:[I

    invoke-static {v1, v3}, La0/d;->h(I[I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, La0/L;->d:I

    new-instance p0, La0/x0;

    invoke-direct {p0, v0, v1, v2}, La0/x0;-><init>(La0/w0;II)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, La0/L;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
