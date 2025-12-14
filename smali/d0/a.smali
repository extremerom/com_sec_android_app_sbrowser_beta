.class public final Ld0/a;
.super Lfb/e;
.source "SourceFile"


# instance fields
.field public final a:Le0/b;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Le0/b;II)V
    .locals 0

    invoke-direct {p0}, Lfb/e;-><init>()V

    iput-object p1, p0, Ld0/a;->a:Le0/b;

    iput p2, p0, Ld0/a;->b:I

    invoke-virtual {p1}, Lfb/a;->g()I

    move-result p1

    invoke-static {p2, p3, p1}, LG5/y3;->e(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Ld0/a;->c:I

    return-void
.end method


# virtual methods
.method public final g()I
    .locals 0

    iget p0, p0, Ld0/a;->c:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld0/a;->c:I

    invoke-static {p1, v0}, LG5/y3;->c(II)V

    iget v0, p0, Ld0/a;->b:I

    add-int/2addr v0, p1

    iget-object p0, p0, Ld0/a;->a:Le0/b;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Ld0/a;->c:I

    invoke-static {p1, p2, v0}, LG5/y3;->e(III)V

    new-instance v0, Ld0/a;

    iget v1, p0, Ld0/a;->b:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Ld0/a;->a:Le0/b;

    invoke-direct {v0, p0, p1, v1}, Ld0/a;-><init>(Le0/b;II)V

    return-object v0
.end method
