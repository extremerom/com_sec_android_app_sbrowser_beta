.class public final LQa/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final g:Lwd/j;

.field public static final h:Lwd/j;

.field public static final i:Lwd/j;


# instance fields
.field public final a:Lwd/g;

.field public b:Z

.field public c:[I

.field public d:I

.field public e:[Ljava/lang/String;

.field public f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwd/j;->d:Lwd/j;

    const-string v0, "</"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, LQa/i;->g:Lwd/j;

    const-string v0, "/>"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, LQa/i;->h:Lwd/j;

    const-string v0, "=\""

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    const-string v0, "<![CDATA["

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    const-string v0, "]]>"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, LQa/i;->i:Lwd/j;

    return-void
.end method

.method public constructor <init>(Lwd/g;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LQa/i;->b:Z

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, LQa/i;->c:[I

    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, LQa/i;->e:[Ljava/lang/String;

    new-array v1, v1, [I

    iput-object v1, p0, LQa/i;->f:[I

    const/4 v1, 0x1

    iput v1, p0, LQa/i;->d:I

    aput v0, v2, v0

    iput-object p1, p0, LQa/i;->a:Lwd/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, LQa/i;->c()I

    move-result v0

    iget-object v1, p0, LQa/i;->a:Lwd/g;

    const/4 v2, 0x1

    const/16 v3, 0x3c

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    const/4 v5, 0x5

    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, LQa/i;->e()V

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget p0, p0, LQa/i;->d:I

    sub-int/2addr p0, v2

    aput-object p1, v0, p0

    invoke-virtual {v1, v3}, Lwd/g;->b0(I)V

    invoke-virtual {v1, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Unexpected begin of a new xml element <"

    const-string v1, ">. New xml elements can only begin on a empty document or in a text content but tried to insert a element on scope "

    invoke-static {v0, p1, v1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, LQa/i;->d:I

    iget-object v1, p0, LQa/i;->c:[I

    invoke-static {v0, v1}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LQa/i;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object v0, p0, LQa/i;->c:[I

    iget v4, p0, LQa/i;->d:I

    sub-int/2addr v4, v2

    aput v5, v0, v4

    invoke-virtual {p0}, LQa/i;->e()V

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget p0, p0, LQa/i;->d:I

    sub-int/2addr p0, v2

    aput-object p1, v0, p0

    const/16 p0, 0x3e

    invoke-virtual {v1, p0}, Lwd/g;->b0(I)V

    invoke-virtual {v1, v3}, Lwd/g;->b0(I)V

    invoke-virtual {v1, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "A xml document can only have one root xml element. There is already one but you try to add another one <"

    const-string v1, ">"

    invoke-static {v0, p1, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, LQa/i;->c:[I

    iget v4, p0, LQa/i;->d:I

    sub-int/2addr v4, v2

    aput v2, v0, v4

    invoke-virtual {p0}, LQa/i;->e()V

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget p0, p0, LQa/i;->d:I

    sub-int/2addr p0, v2

    aput-object p1, v0, p0

    invoke-virtual {v1, v3}, Lwd/g;->b0(I)V

    invoke-virtual {v1, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-virtual {p0}, LQa/i;->c()I

    move-result v0

    iget-object v1, p0, LQa/i;->a:Lwd/g;

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget v1, p0, LQa/i;->d:I

    add-int/lit8 v2, v1, -0x1

    aget-object v0, v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v1, "Trying to close the xml element </"

    const-string v3, "> but I\'m in xml scope "

    invoke-static {v1, v0, v3}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LQa/i;->d:I

    iget-object v3, p0, LQa/i;->c:[I

    invoke-static {v1, v3}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/i;->f(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v0, p0, LQa/i;->c:[I

    invoke-static {v1, v0}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to close the xml element, but all xml elements are already closed properly. Xml scope is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/i;->f(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v0, LQa/i;->g:Lwd/j;

    invoke-virtual {v1, v0}, Lwd/g;->V(Lwd/j;)V

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget v2, p0, LQa/i;->d:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lwd/g;->v0(Ljava/lang/String;)V

    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Lwd/g;->b0(I)V

    invoke-virtual {p0}, LQa/i;->d()V

    goto :goto_0

    :cond_2
    sget-object v0, LQa/i;->h:Lwd/j;

    invoke-virtual {v1, v0}, Lwd/g;->V(Lwd/j;)V

    invoke-virtual {p0}, LQa/i;->d()V

    :goto_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, LQa/i;->d:I

    if-eqz v0, :cond_0

    iget-object p0, p0, LQa/i;->c:[I

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "XML Writer is closed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 5

    iget v0, p0, LQa/i;->d:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, LQa/i;->c:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LQa/i;->d:I

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incomplete document. Abrupt end at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, LQa/i;->d:I

    iget-object v3, p0, LQa/i;->c:[I

    iget-object v4, p0, LQa/i;->e:[Ljava/lang/String;

    invoke-static {v2, v4, v3}, LQa/e;->d(I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in scope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LQa/i;->d:I

    iget-object p0, p0, LQa/i;->c:[I

    invoke-static {v2, p0}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, LQa/i;->c:[I

    iget v1, p0, LQa/i;->d:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, LQa/i;->d:I

    iget-object v2, p0, LQa/i;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object p0, p0, LQa/i;->f:[I

    add-int/lit8 v1, v1, -0x2

    aget v0, p0, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, v1

    return-void
.end method

.method public final e()V
    .locals 6

    iget v0, p0, LQa/i;->d:I

    iget-object v1, p0, LQa/i;->c:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LQa/i;->f:[I

    iget v1, p0, LQa/i;->d:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget v1, p0, LQa/i;->d:I

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, LQa/i;->c:[I

    iput-object v4, p0, LQa/i;->f:[I

    iput-object v2, p0, LQa/i;->e:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LQa/i;->c:[I

    iget v1, p0, LQa/i;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LQa/i;->d:I

    const/4 p0, 0x3

    aput p0, v0, v1

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/IOException;

    const-string v1, " at path "

    invoke-static {p1, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, LQa/i;->d:I

    iget-object v2, p0, LQa/i;->c:[I

    iget-object p0, p0, LQa/i;->e:[Ljava/lang/String;

    invoke-static {v1, p0, v2}, LQa/e;->d(I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, LQa/i;->c()I

    move-result v0

    iget-object v1, p0, LQa/i;->a:Lwd/g;

    const/4 v2, 0x3

    const/4 v3, 0x5

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    iget-object v0, p0, LQa/i;->e:[Ljava/lang/String;

    iget v1, p0, LQa/i;->d:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "Error while trying to write text content into xml element <"

    const-string v3, ">"

    const-string v4, "</"

    invoke-static {v2, v0, v3, p1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">. Xml scope was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LQa/i;->d:I

    iget-object v2, p0, LQa/i;->c:[I

    invoke-static {v0, v2}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LQa/i;->f(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "Error while trying to write text content \""

    const-string v2, "\". Xml scope was "

    invoke-static {v0, p1, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, LQa/i;->d:I

    iget-object v2, p0, LQa/i;->c:[I

    invoke-static {v0, v2}, LQa/e;->e(I[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, LQa/i;->f(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v1, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Lwd/g;->b0(I)V

    iget-object v0, p0, LQa/i;->c:[I

    iget p0, p0, LQa/i;->d:I

    add-int/lit8 p0, p0, -0x1

    aput v3, v0, p0

    invoke-virtual {v1, p1}, Lwd/g;->v0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
