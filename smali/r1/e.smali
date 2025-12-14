.class public abstract Lr1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Lr1/b;

.field public static final n:Lr1/b;

.field public static final o:Lr1/b;

.field public static final p:Lr1/b;

.field public static final q:Lr1/b;

.field public static final r:Lr1/b;

.field public static final s:Lr1/b;

.field public static final t:Lr1/b;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:LG5/C;

.field public f:Z

.field public g:F

.field public h:F

.field public i:J

.field public j:F

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->m:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->n:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->o:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->p:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->q:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->r:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->s:Lr1/b;

    new-instance v0, Lr1/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr1/b;-><init>(I)V

    sput-object v0, Lr1/e;->t:Lr1/b;

    return-void
.end method

.method public constructor <init>(LU/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr1/e;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lr1/e;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr1/e;->c:Z

    iput-boolean v1, p0, Lr1/e;->f:Z

    iput v0, p0, Lr1/e;->g:F

    const v0, -0x800001

    iput v0, p0, Lr1/e;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr1/e;->i:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/e;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/e;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lr1/e;->d:Ljava/lang/Object;

    new-instance v0, Lx6/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lx6/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lr1/e;->e:LG5/C;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lr1/e;->j:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;LG5/C;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr1/e;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lr1/e;->b:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr1/e;->c:Z

    iput-boolean v1, p0, Lr1/e;->f:Z

    iput v0, p0, Lr1/e;->g:F

    const v0, -0x800001

    iput v0, p0, Lr1/e;->h:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr1/e;->i:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/e;->k:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1/e;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lr1/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Lr1/e;->e:LG5/C;

    sget-object p1, Lr1/e;->q:Lr1/b;

    if-eq p2, p1, :cond_4

    sget-object p1, Lr1/e;->r:Lr1/b;

    if-eq p2, p1, :cond_4

    sget-object p1, Lr1/e;->s:Lr1/b;

    if-ne p2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lr1/e;->t:Lr1/b;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    iput v0, p0, Lr1/e;->j:F

    goto :goto_2

    :cond_1
    sget-object p1, Lr1/e;->o:Lr1/b;

    if-eq p2, p1, :cond_3

    sget-object p1, Lr1/e;->p:Lr1/b;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lr1/e;->j:F

    goto :goto_2

    :cond_3
    :goto_0
    iput v0, p0, Lr1/e;->j:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Lr1/e;->j:F

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lr1/c;)V
    .locals 1

    iget-object p0, p0, Lr1/e;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lr1/d;)V
    .locals 1

    iget-boolean v0, p0, Lr1/e;->f:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lr1/e;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Z)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr1/e;->f:Z

    sget-object v1, Lr1/a;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lr1/a;

    invoke-direct {v2}, Lr1/a;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr1/a;

    iget-object v2, v1, Lr1/a;->a:LN/A;

    invoke-virtual {v2, p0}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lr1/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v4, v1, Lr1/a;->e:Z

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lr1/e;->i:J

    iput-boolean v0, p0, Lr1/e;->c:Z

    :goto_0
    iget-object v1, p0, Lr1/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr1/c;

    iget v2, p0, Lr1/e;->b:F

    iget v3, p0, Lr1/e;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Lr1/c;->a(Lr1/e;ZFF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v4

    :goto_1
    if-ltz p0, :cond_5

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final d(F)V
    .locals 3

    iget-object v0, p0, Lr1/e;->e:LG5/C;

    iget-object v1, p0, Lr1/e;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, LG5/C;->f(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lr1/e;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/d;

    iget v1, p0, Lr1/e;->b:F

    iget v2, p0, Lr1/e;->a:F

    invoke-interface {v0, p0, v1, v2}, Lr1/d;->c(Lr1/e;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lr1/e;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr1/e;->c:Z

    return-void
.end method
