.class public final Lv2/Y;
.super Lv2/a0;
.source "SourceFile"


# static fields
.field public static final g:Lv2/Y;


# instance fields
.field public final a:Lv2/P;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:I

.field public final e:Lv2/O;

.field public final f:Lv2/O;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lv2/x1;->d:Lv2/x1;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v6, Lv2/O;

    sget-object v0, Lv2/M;->c:Lv2/M;

    sget-object v1, Lv2/M;->b:Lv2/M;

    invoke-direct {v6, v0, v1, v1}, Lv2/O;-><init>(LEc/g;LEc/g;LEc/g;)V

    new-instance v0, Lv2/Y;

    sget-object v2, Lv2/P;->REFRESH:Lv2/P;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lv2/Y;-><init>(Lv2/P;Ljava/util/List;IILv2/O;Lv2/O;)V

    sput-object v0, Lv2/Y;->g:Lv2/Y;

    return-void
.end method

.method public constructor <init>(Lv2/P;Ljava/util/List;IILv2/O;Lv2/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/Y;->a:Lv2/P;

    iput-object p2, p0, Lv2/Y;->b:Ljava/util/List;

    iput p3, p0, Lv2/Y;->c:I

    iput p4, p0, Lv2/Y;->d:I

    iput-object p5, p0, Lv2/Y;->e:Lv2/O;

    iput-object p6, p0, Lv2/Y;->f:Lv2/O;

    sget-object p0, Lv2/P;->APPEND:Lv2/P;

    if-eq p1, p0, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Prepend insert defining placeholdersBefore must be > 0, but was "

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p0, Lv2/P;->PREPEND:Lv2/P;

    if-eq p1, p0, :cond_3

    if-ltz p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Append insert defining placeholdersAfter must be > 0, but was "

    invoke-static {p4, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    sget-object p0, Lv2/P;->REFRESH:Lv2/P;

    if-ne p1, p0, :cond_5

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a REFRESH Insert event with no TransformablePages as this could permanently stall pagination. Note that this check does not prevent empty LoadResults and is instead usually an indication of an internal error in Paging itself."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv2/Y;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv2/Y;

    iget-object v1, p1, Lv2/Y;->a:Lv2/P;

    iget-object v3, p0, Lv2/Y;->a:Lv2/P;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lv2/Y;->b:Ljava/util/List;

    iget-object v3, p1, Lv2/Y;->b:Ljava/util/List;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lv2/Y;->c:I

    iget v3, p1, Lv2/Y;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lv2/Y;->d:I

    iget v3, p1, Lv2/Y;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lv2/Y;->e:Lv2/O;

    iget-object v3, p1, Lv2/Y;->e:Lv2/O;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lv2/Y;->f:Lv2/O;

    iget-object p1, p1, Lv2/Y;->f:Lv2/O;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lv2/Y;->a:Lv2/P;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lv2/Y;->b:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lv2/Y;->c:I

    invoke-static {v0, v2, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lv2/Y;->d:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-object v2, p0, Lv2/Y;->e:Lv2/O;

    invoke-virtual {v2}, Lv2/O;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lv2/Y;->f:Lv2/O;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lv2/O;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lv2/Y;->b:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv2/x1;

    iget-object v3, v3, Lv2/x1;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const-string v1, "none"

    const/4 v3, -0x1

    iget v4, p0, Lv2/Y;->c:I

    if-eq v4, v3, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    iget v5, p0, Lv2/Y;->d:I

    if-eq v5, v3, :cond_2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "PageEvent.Insert for "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lv2/Y;->a:Lv2/P;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items (\n                    |   first item: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/x1;

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, v2, Lv2/x1;->b:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n                    |   last item: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/x1;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lv2/x1;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    |   placeholdersBefore: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    |   placeholdersAfter: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    |   sourceLoadStates: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lv2/Y;->e:Lv2/O;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n                    "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lv2/Y;->f:Lv2/O;

    if-eqz p0, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|   mediatorLoadStates: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LKc/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
