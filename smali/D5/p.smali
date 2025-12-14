.class public final LD5/p;
.super LD5/q;
.source "SourceFile"


# instance fields
.field public final transient c:I

.field public final transient d:I

.field public final synthetic e:LD5/q;


# direct methods
.method public constructor <init>(LD5/q;II)V
    .locals 0

    iput-object p1, p0, LD5/p;->e:LD5/q;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, LD5/p;->c:I

    iput p3, p0, LD5/p;->d:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LD5/p;->d:I

    invoke-static {p1, v0}, LG5/D;->i(II)V

    iget v0, p0, LD5/p;->c:I

    add-int/2addr p1, v0

    iget-object p0, p0, LD5/p;->e:LD5/q;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, LD5/p;->e:LD5/q;

    invoke-virtual {v0}, LD5/n;->l()I

    move-result v0

    iget v1, p0, LD5/p;->c:I

    add-int/2addr v0, v1

    iget p0, p0, LD5/p;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, LD5/p;->e:LD5/q;

    invoke-virtual {v0}, LD5/n;->l()I

    move-result v0

    iget p0, p0, LD5/p;->c:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final m()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final n()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LD5/p;->e:LD5/q;

    invoke-virtual {p0}, LD5/n;->n()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final p(II)LD5/q;
    .locals 1

    iget v0, p0, LD5/p;->d:I

    invoke-static {p1, p2, v0}, LG5/D;->j(III)V

    iget v0, p0, LD5/p;->c:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, LD5/p;->e:LD5/q;

    invoke-virtual {p0, p1, p2}, LD5/q;->p(II)LD5/q;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, LD5/p;->d:I

    return p0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LD5/p;->p(II)LD5/q;

    move-result-object p0

    return-object p0
.end method
