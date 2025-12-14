.class public final LE5/c;
.super LE5/d;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:LE5/d;


# direct methods
.method public constructor <init>(LE5/d;II)V
    .locals 0

    iput-object p1, p0, LE5/c;->e:LE5/d;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, LE5/c;->c:I

    iput p3, p0, LE5/c;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LE5/c;->d:I

    invoke-static {p1, v0}, LG5/l2;->g(II)V

    iget v0, p0, LE5/c;->c:I

    add-int/2addr p1, v0

    iget-object p0, p0, LE5/c;->e:LE5/d;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, LE5/c;->e:LE5/d;

    invoke-virtual {v0}, LE5/a;->l()I

    move-result v0

    iget v1, p0, LE5/c;->c:I

    add-int/2addr v0, v1

    iget p0, p0, LE5/c;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, LE5/c;->e:LE5/d;

    invoke-virtual {v0}, LE5/a;->l()I

    move-result v0

    iget p0, p0, LE5/c;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final m()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LE5/c;->e:LE5/d;

    invoke-virtual {p0}, LE5/a;->m()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(II)LE5/d;
    .locals 1

    iget v0, p0, LE5/c;->d:I

    invoke-static {p1, p2, v0}, LG5/l2;->h(III)V

    iget v0, p0, LE5/c;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, LE5/c;->e:LE5/d;

    invoke-virtual {p0, p1, p2}, LE5/d;->n(II)LE5/d;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, LE5/c;->d:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LE5/c;->n(II)LE5/d;

    move-result-object p0

    return-object p0
.end method
