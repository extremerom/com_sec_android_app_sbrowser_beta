.class public final La0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lub/a;


# instance fields
.field public a:[I

.field public b:I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:Ljava/util/ArrayList;

.field public i:Ljava/util/HashMap;

.field public j:LN/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, La0/w0;->a:[I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, La0/w0;->c:[Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/w0;->h:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final g(La0/c;)I
    .locals 1

    iget-boolean p0, p0, La0/w0;->f:Z

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p1}, La0/c;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, La0/c;->a:I

    return p0

    :cond_0
    const-string p0, "Anchor refers to a group that was removed"

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Use active SlotWriter to determine anchor location instead"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()La0/v0;
    .locals 1

    iget-boolean v0, p0, La0/w0;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, La0/w0;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La0/w0;->e:I

    new-instance v0, La0/v0;

    invoke-direct {v0, p0}, La0/v0;-><init>(La0/w0;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot read while a writer is pending"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, La0/L;

    const/4 v1, 0x0

    iget v2, p0, La0/w0;->b:I

    invoke-direct {v0, p0, v1, v2}, La0/L;-><init>(La0/w0;II)V

    return-object v0
.end method

.method public final m()La0/y0;
    .locals 2

    iget-boolean v0, p0, La0/w0;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, La0/w0;->e:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La0/w0;->f:Z

    iget v1, p0, La0/w0;->g:I

    add-int/2addr v1, v0

    iput v1, p0, La0/w0;->g:I

    new-instance v0, La0/y0;

    invoke-direct {v0, p0}, La0/y0;-><init>(La0/w0;)V

    return-object v0

    :cond_0
    const-string p0, "Cannot start a writer when a reader is pending"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "Cannot start a writer when another writer is pending"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    throw v1
.end method
