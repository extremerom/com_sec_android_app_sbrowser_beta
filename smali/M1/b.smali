.class public final LM1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LM1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, LM1/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LM1/b;-><init>(I)V

    new-instance v2, LM1/b;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, LM1/b;-><init>(I)V

    new-instance v3, LM1/b;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, LM1/b;-><init>(I)V

    new-instance v4, LM1/b;

    const/16 v5, 0x10

    invoke-direct {v4, v5}, LM1/b;-><init>(I)V

    new-instance v5, LM1/b;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, LM1/b;-><init>(I)V

    new-instance v6, LM1/b;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, LM1/b;-><init>(I)V

    filled-new-array/range {v0 .. v6}, [LM1/b;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LM1/b;

    iget v2, v2, LM1/b;->a:I

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    sput v1, LM1/b;->b:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM1/b;->a:I

    return-void
.end method

.method public static final a(II)I
    .locals 0

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(I)Ljava/util/ArrayList;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v1, 0x10

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/16 v1, 0x20

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, LM1/b;

    invoke-direct {v2, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v1, 0x40

    invoke-static {p0, v1}, LR9/a;->c(II)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, LM1/b;

    invoke-direct {p0, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "tiny"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "small"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "widesmall"

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    if-ne p0, v0, :cond_4

    const-string p0, "medium"

    goto :goto_0

    :cond_4
    const/16 v0, 0x10

    if-ne p0, v0, :cond_5

    const-string p0, "large"

    goto :goto_0

    :cond_5
    const/16 v0, 0x20

    if-ne p0, v0, :cond_6

    const-string p0, "extralarge"

    goto :goto_0

    :cond_6
    const/16 v0, 0x40

    if-ne p0, v0, :cond_7

    const-string p0, "extralargelong"

    goto :goto_0

    :cond_7
    sget v0, LM1/b;->b:I

    if-ne p0, v0, :cond_8

    const-string p0, "all"

    goto :goto_0

    :cond_8
    const-string p0, "mixed"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, LM1/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, LM1/b;

    iget p1, p1, LM1/b;->a:I

    iget p0, p0, LM1/b;->a:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, LM1/b;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, LM1/b;->a:I

    invoke-static {p0}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
