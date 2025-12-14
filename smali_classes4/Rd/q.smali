.class public final LRd/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[Ljava/lang/String;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lorg/jsoup/parser/P;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, LRd/q;->d:[C

    const-string v5, "*="

    const-string v6, "~="

    const-string v1, "="

    const-string v2, "!="

    const-string v3, "^="

    const-string v4, "$="

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LRd/q;->e:[Ljava/lang/String;

    const-string v0, "(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LRd/q;->f:Ljava/util/regex/Pattern;

    const-string v0, "([+-])?(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LRd/q;->g:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x2cs
        0x3es
        0x2bs
        0x7es
        0x20s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LRd/q;->c:Ljava/util/ArrayList;

    invoke-static {p1}, LOd/b;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LRd/q;->b:Ljava/lang/String;

    new-instance v0, Lorg/jsoup/parser/P;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/P;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    return-void
.end method

.method public static j(Ljava/lang/String;)LRd/n;
    .locals 1

    :try_start_0
    new-instance v0, LRd/q;

    invoke-direct {v0, p0}, LRd/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, LRd/q;->i()LRd/n;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, LJb/x;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(C)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v3}, Lorg/jsoup/parser/P;->f()Z

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_0
    invoke-virtual {v3}, Lorg/jsoup/parser/P;->g()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "("

    invoke-virtual {v3, v5}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x28

    const/16 v6, 0x29

    invoke-virtual {v3, v5, v6}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v5, "["

    invoke-virtual {v3, v5}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    const/16 v6, 0x5d

    invoke-virtual {v3, v5, v6}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v5, LRd/q;->d:[C

    invoke-virtual {v3, v5}, Lorg/jsoup/parser/P;->j([C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/jsoup/parser/P;->c()C

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/jsoup/parser/P;->c()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v4}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LRd/q;->j(Ljava/lang/String;)LRd/n;

    move-result-object v3

    iget-object p0, p0, LRd/q;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v1, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LRd/n;

    instance-of v6, v4, LRd/b;

    if-eqz v6, :cond_6

    if-eq p1, v5, :cond_6

    move-object v6, v4

    check-cast v6, LRd/b;

    iget v7, v6, LRd/c;->b:I

    if-lez v7, :cond_5

    iget-object v6, v6, LRd/c;->a:Ljava/util/ArrayList;

    sub-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LRd/n;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    move v7, v1

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_4

    :cond_6
    :goto_3
    move v7, v2

    move-object v6, v4

    goto :goto_4

    :cond_7
    new-instance v4, LRd/a;

    invoke-direct {v4, p0}, LRd/a;-><init>(Ljava/util/List;)V

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/16 v8, 0x20

    if-eq p1, v8, :cond_d

    const/16 v8, 0x3e

    if-eq p1, v8, :cond_c

    const/16 v8, 0x7e

    if-eq p1, v8, :cond_b

    const/16 v8, 0x2b

    if-eq p1, v8, :cond_a

    if-ne p1, v5, :cond_9

    instance-of p1, v4, LRd/b;

    if-eqz p1, :cond_8

    check-cast v4, LRd/b;

    goto :goto_5

    :cond_8
    new-instance p1, LRd/b;

    invoke-direct {p1}, LRd/c;-><init>()V

    iget-object v0, p1, LRd/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, LRd/c;->b:I

    move-object v4, p1

    :goto_5
    iget-object p1, v4, LRd/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v4, LRd/c;->b:I

    goto :goto_7

    :cond_9
    new-instance p0, LJb/x;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unknown combinator \'%s\'"

    invoke-direct {p0, v0, p1}, LJb/x;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_a
    new-instance p1, LRd/a;

    new-instance v5, LRd/s;

    invoke-direct {v5, v1}, LRd/s;-><init>(I)V

    iput-object v4, v5, LRd/t;->a:LRd/n;

    new-array v0, v0, [LRd/n;

    aput-object v5, v0, v2

    aput-object v3, v0, v1

    invoke-direct {p1, v0}, LRd/a;-><init>([LRd/n;)V

    :goto_6
    move-object v4, p1

    goto :goto_7

    :cond_b
    new-instance p1, LRd/a;

    new-instance v5, LRd/s;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, LRd/s;-><init>(I)V

    iput-object v4, v5, LRd/t;->a:LRd/n;

    new-array v0, v0, [LRd/n;

    aput-object v5, v0, v2

    aput-object v3, v0, v1

    invoke-direct {p1, v0}, LRd/a;-><init>([LRd/n;)V

    goto :goto_6

    :cond_c
    new-instance p1, LRd/a;

    new-instance v5, LRd/s;

    invoke-direct {v5, v2}, LRd/s;-><init>(I)V

    iput-object v4, v5, LRd/t;->a:LRd/n;

    new-array v0, v0, [LRd/n;

    aput-object v5, v0, v2

    aput-object v3, v0, v1

    invoke-direct {p1, v0}, LRd/a;-><init>([LRd/n;)V

    goto :goto_6

    :cond_d
    new-instance p1, LRd/a;

    new-instance v5, LRd/s;

    const/4 v8, 0x3

    invoke-direct {v5, v8}, LRd/s;-><init>(I)V

    iput-object v4, v5, LRd/t;->a:LRd/n;

    new-array v0, v0, [LRd/n;

    aput-object v5, v0, v2

    aput-object v3, v0, v1

    invoke-direct {p1, v0}, LRd/a;-><init>([LRd/n;)V

    goto :goto_6

    :goto_7
    if-eqz v7, :cond_e

    move-object p1, v6

    check-cast p1, LRd/b;

    iget-object v0, p1, LRd/c;->a:Ljava/util/ArrayList;

    iget p1, p1, LRd/c;->b:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_e
    move-object v6, v4

    :goto_8
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .locals 5

    const/4 v0, 0x1

    iget-object p0, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, LPd/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, LOd/c;

    const-string v0, "Index must be numeric"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":containsOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":contains"

    :goto_0
    iget-object v1, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/P;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(text) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    new-instance p1, LRd/f;

    const/4 v0, 0x4

    invoke-direct {p1, v1, v0}, LRd/f;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    new-instance p1, LRd/f;

    const/4 v0, 0x5

    invoke-direct {p1, v1, v0}, LRd/f;-><init>(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":containsWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":containsWholeText"

    :goto_0
    iget-object v1, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/parser/P;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(text) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    new-instance p1, LRd/f;

    const/4 v0, 0x6

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    new-instance p1, LRd/f;

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(ZZ)V
    .locals 8

    iget-object v0, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v0}, Lorg/jsoup/parser/P;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG5/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, LRd/q;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    sget-object v2, LRd/q;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "odd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "even"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, ""

    const-string v7, "^\\+"

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v5

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_3
    move v5, v6

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v6

    :goto_2
    iget-object p0, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    new-instance p1, LRd/l;

    const/4 p2, 0x2

    invoke-direct {p1, v4, v5, p2}, LRd/l;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance p1, LRd/l;

    const/4 p2, 0x3

    invoke-direct {p1, v4, v5, p2}, LRd/l;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    new-instance p1, LRd/l;

    const/4 p2, 0x1

    invoke-direct {p1, v4, v5, p2}, LRd/l;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance p1, LRd/l;

    const/4 p2, 0x0

    invoke-direct {p1, v4, v5, p2}, LRd/l;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :cond_8
    new-instance p0, LJb/x;

    const-string p1, "Could not parse nth-index \'%s\': unexpected format"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, LJb/x;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public final f()V
    .locals 12

    const/16 v0, 0x9

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v7, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v8

    sget-object v9, Lorg/jsoup/parser/P;->d:[Ljava/lang/String;

    iget-object v10, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    invoke-virtual {v7, v9}, Lorg/jsoup/parser/P;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOd/b;->e(Ljava/lang/String;)V

    new-instance v0, LRd/f;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1, v6}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_0
    const-string v8, "."

    invoke-virtual {v7, v8}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v9}, Lorg/jsoup/parser/P;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOd/b;->e(Ljava/lang/String;)V

    new-instance v0, LRd/f;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v5, v6}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v7}, Lorg/jsoup/parser/P;->g()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, v7, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    iget v9, v7, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v6

    :goto_0
    const-string v9, "*|"

    if-nez v8, :cond_2c

    invoke-virtual {v7, v9}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v0, "["

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    iget-object v8, p0, LRd/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    new-instance p0, Lorg/jsoup/parser/P;

    const/16 v0, 0x5b

    const/16 v9, 0x5d

    invoke-virtual {v7, v0, v9}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/P;-><init>(Ljava/lang/String;)V

    sget-object v0, LRd/q;->e:[Ljava/lang/String;

    iget v7, p0, Lorg/jsoup/parser/P;->b:I

    :goto_1
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v9

    if-nez v9, :cond_6

    move v9, v6

    :goto_2
    if-ge v9, v2, :cond_5

    aget-object v11, v0, v9

    invoke-virtual {p0, v11}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    add-int/2addr v9, v4

    goto :goto_2

    :cond_5
    iget v9, p0, Lorg/jsoup/parser/P;->b:I

    add-int/2addr v9, v4

    iput v9, p0, Lorg/jsoup/parser/P;->b:I

    goto :goto_1

    :cond_6
    :goto_3
    iget-object v0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOd/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->f()Z

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string p0, "^"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, LRd/f;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, LRd/f;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_7
    new-instance p0, LRd/f;

    invoke-direct {p0, v0, v6, v6}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    const-string v2, "="

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v1, LRd/g;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v6, v0, p0, v4}, LRd/g;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_9
    const-string v2, "!="

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, LRd/g;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v3, v0, p0, v4}, LRd/g;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    const-string v2, "^="

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, LRd/g;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v1, v0, p0, v6}, LRd/g;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_b
    const-string v1, "$="

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, LRd/g;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v5, v0, p0, v6}, LRd/g;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_c
    const-string v1, "*="

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, LRd/g;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, v0, p0, v4}, LRd/g;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_d
    const-string v1, "~="

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, LRd/h;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, LG5/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LRd/h;->a:Ljava/lang/String;

    iput-object p0, v1, LRd/h;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_e
    new-instance v0, LJb/x;

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v8, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    invoke-direct {v0, v1, p0}, LJb/x;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f
    const-string v0, "*"

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance p0, LRd/e;

    invoke-direct {p0, v6}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_10
    const-string v0, ":lt("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, LRd/i;

    invoke-virtual {p0}, LRd/q;->b()I

    move-result p0

    invoke-direct {v0, p0, v5}, LRd/i;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_11
    const-string v0, ":gt("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, LRd/i;

    invoke-virtual {p0}, LRd/q;->b()I

    move-result p0

    invoke-direct {v0, p0, v4}, LRd/i;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_12
    const-string v0, ":eq("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, LRd/i;

    invoke-virtual {p0}, LRd/q;->b()I

    move-result p0

    invoke-direct {v0, p0, v6}, LRd/i;-><init>(II)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    const-string v0, ":has("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    const/16 v9, 0x29

    const/16 v11, 0x28

    if-eqz v0, :cond_14

    const-string p0, ":has"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v9}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":has(selector) sub-select must not be empty"

    invoke-static {p0, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LRd/r;

    invoke-static {p0}, LRd/q;->j(Ljava/lang/String;)LRd/n;

    move-result-object p0

    invoke-direct {v0, p0}, LRd/r;-><init>(LRd/n;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_14
    const-string v0, ":contains("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v6}, LRd/q;->c(Z)V

    goto/16 :goto_6

    :cond_15
    const-string v0, ":containsOwn("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v4}, LRd/q;->c(Z)V

    goto/16 :goto_6

    :cond_16
    const-string v0, ":containsWholeText("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, v6}, LRd/q;->d(Z)V

    goto/16 :goto_6

    :cond_17
    const-string v0, ":containsWholeOwnText("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, v4}, LRd/q;->d(Z)V

    goto/16 :goto_6

    :cond_18
    const-string v0, ":containsData("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, ":containsData"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v9}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/jsoup/parser/P;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":containsData(text) query must not be empty"

    invoke-static {p0, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LRd/f;

    invoke-direct {v0, p0, v3}, LRd/f;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_19
    const-string v0, ":matches("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v6}, LRd/q;->g(Z)V

    goto/16 :goto_6

    :cond_1a
    const-string v0, ":matchesOwn("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, v4}, LRd/q;->g(Z)V

    goto/16 :goto_6

    :cond_1b
    const-string v0, ":matchesWholeText("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, v6}, LRd/q;->h(Z)V

    goto/16 :goto_6

    :cond_1c
    const-string v0, ":matchesWholeOwnText("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v4}, LRd/q;->h(Z)V

    goto/16 :goto_6

    :cond_1d
    const-string v0, ":not("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, ":not"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v9}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, ":not(selector) subselect must not be empty"

    invoke-static {p0, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LRd/s;

    invoke-static {p0}, LRd/q;->j(Ljava/lang/String;)LRd/n;

    move-result-object p0

    invoke-direct {v0, v5}, LRd/s;-><init>(I)V

    iput-object p0, v0, LRd/t;->a:LRd/n;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1e
    const-string v0, ":nth-child("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v6, v6}, LRd/q;->e(ZZ)V

    goto/16 :goto_6

    :cond_1f
    const-string v0, ":nth-last-child("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0, v4, v6}, LRd/q;->e(ZZ)V

    goto/16 :goto_6

    :cond_20
    const-string v0, ":nth-of-type("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, v6, v4}, LRd/q;->e(ZZ)V

    goto/16 :goto_6

    :cond_21
    const-string v0, ":nth-last-of-type("

    invoke-virtual {v7, v0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, v4, v4}, LRd/q;->e(ZZ)V

    goto/16 :goto_6

    :cond_22
    const-string p0, ":first-child"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_23

    new-instance p0, LRd/e;

    invoke-direct {p0, v5}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_23
    const-string p0, ":last-child"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    new-instance p0, LRd/e;

    invoke-direct {p0, v3}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_24
    const-string p0, ":first-of-type"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    new-instance p0, LRd/j;

    invoke-direct {p0, v6, v4, v3}, LRd/l;-><init>(III)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_25
    const-string p0, ":last-of-type"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    new-instance p0, LRd/k;

    invoke-direct {p0, v6, v4, v5}, LRd/l;-><init>(III)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_26
    const-string p0, ":only-child"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27

    new-instance p0, LRd/e;

    invoke-direct {p0, v1}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_27
    const-string p0, ":only-of-type"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28

    new-instance p0, LRd/e;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_28
    const-string p0, ":empty"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    new-instance p0, LRd/e;

    invoke-direct {p0, v4}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_29
    const-string p0, ":root"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    new-instance p0, LRd/e;

    invoke-direct {p0, v2}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2a
    const-string p0, ":matchText"

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2b

    new-instance p0, LRd/e;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, LRd/e;-><init>(I)V

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_2b
    new-instance p0, LJb/x;

    invoke-virtual {v7}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v8, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    invoke-direct {p0, v1, v0}, LJb/x;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2c
    :goto_4
    sget-object p0, Lorg/jsoup/parser/P;->c:[Ljava/lang/String;

    invoke-virtual {v7, p0}, Lorg/jsoup/parser/P;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LOd/b;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ":"

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, LRd/b;

    new-instance v7, LRd/f;

    invoke-direct {v7, v1, v0, v6}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    new-instance v0, LRd/f;

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1, v6}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    new-array p0, v5, [LRd/n;

    aput-object v7, p0, v6

    aput-object v0, p0, v4

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3}, LRd/c;-><init>()V

    iget v0, v3, LRd/c;->b:I

    iget-object v1, v3, LRd/c;->a:Ljava/util/ArrayList;

    if-le v0, v4, :cond_2d

    new-instance v0, LRd/a;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, LRd/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2d
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, v3, LRd/c;->b:I

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_2e
    const-string v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2f
    new-instance v1, LRd/f;

    invoke-direct {v1, p0, v0, v6}, LRd/f;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    return-void
.end method

.method public final g(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":matchesOwn"

    goto :goto_0

    :cond_0
    const-string v0, ":matches"

    :goto_0
    iget-object v1, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(regex) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    new-instance p1, LRd/m;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, LRd/m;-><init>(Ljava/util/regex/Pattern;I)V

    goto :goto_1

    :cond_1
    new-instance p1, LRd/m;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LRd/m;-><init>(Ljava/util/regex/Pattern;I)V

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ":matchesWholeOwnText"

    goto :goto_0

    :cond_0
    const-string v0, ":matchesWholeText"

    :goto_0
    iget-object v1, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v1, v0}, Lorg/jsoup/parser/P;->d(Ljava/lang/String;)V

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v1, v2, v3}, Lorg/jsoup/parser/P;->a(CC)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(regex) query must not be empty"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    new-instance p1, LRd/m;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, LRd/m;-><init>(Ljava/util/regex/Pattern;I)V

    goto :goto_1

    :cond_1
    new-instance p1, LRd/m;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, LRd/m;-><init>(Ljava/util/regex/Pattern;I)V

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i()LRd/n;
    .locals 5

    iget-object v0, p0, LRd/q;->a:Lorg/jsoup/parser/P;

    invoke-virtual {v0}, Lorg/jsoup/parser/P;->f()Z

    sget-object v1, LRd/q;->d:[C

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/P;->j([C)Z

    move-result v2

    iget-object v3, p0, LRd/q;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    new-instance v2, LRd/e;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, LRd/e;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/jsoup/parser/P;->c()C

    move-result v2

    invoke-virtual {p0, v2}, LRd/q;->a(C)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LRd/q;->f()V

    :goto_0
    invoke-virtual {v0}, Lorg/jsoup/parser/P;->g()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/jsoup/parser/P;->f()Z

    move-result v2

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/P;->j([C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/jsoup/parser/P;->c()C

    move-result v2

    invoke-virtual {p0, v2}, LRd/q;->a(C)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, LRd/q;->a(C)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LRd/q;->f()V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LRd/n;

    return-object p0

    :cond_4
    new-instance p0, LRd/a;

    invoke-direct {p0, v3}, LRd/a;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LRd/q;->b:Ljava/lang/String;

    return-object p0
.end method
