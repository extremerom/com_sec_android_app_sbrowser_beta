.class public final Lorg/jsoup/parser/P;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "*|"

    const-string v1, "|"

    const-string v2, "_"

    const-string v3, "-"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/P;->c:[Ljava/lang/String;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/P;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/parser/P;->b:I

    invoke-static {p1}, LOd/b;->g(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    return-void
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v5, p0, v3

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_0

    if-ne v4, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(CC)Ljava/lang/String;
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v5, v0

    move v6, v5

    move v2, v1

    move v3, v2

    move v4, v3

    move v7, v4

    move v8, v7

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->c()C

    move-result v9

    const/16 v10, 0x5c

    if-eq v2, v10, :cond_5

    const/16 v10, 0x27

    if-ne v9, v10, :cond_1

    if-eq v9, p1, :cond_1

    if-nez v3, :cond_1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v10, 0x22

    if-ne v9, v10, :cond_2

    if-eq v9, p1, :cond_2

    if-nez v4, :cond_2

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    :goto_1
    if-nez v4, :cond_8

    if-nez v3, :cond_8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    if-ne v9, p1, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v5, v0, :cond_7

    iget v5, p0, Lorg/jsoup/parser/P;->b:I

    goto :goto_2

    :cond_4
    if-ne v9, p2, :cond_7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_5
    const/16 v10, 0x51

    if-ne v9, v10, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/16 v10, 0x45

    if-ne v9, v10, :cond_7

    move v8, v1

    :cond_7
    :goto_2
    if-lez v7, :cond_8

    if-eqz v2, :cond_8

    iget v6, p0, Lorg/jsoup/parser/P;->b:I

    :cond_8
    :goto_3
    if-gtz v7, :cond_b

    :goto_4
    if-ltz v6, :cond_9

    iget-object p0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_9
    const-string p0, ""

    :goto_5
    if-gtz v7, :cond_a

    return-object p0

    :cond_a
    const-string p1, "Did not find balanced marker at \'"

    const-string p2, "\'"

    invoke-static {p1, p0, p2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, LOd/c;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    move v2, v9

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/jsoup/parser/P;->b:I

    iget-object v1, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v3, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lorg/jsoup/parser/P;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v2}, Lorg/jsoup/parser/P;->h(Ljava/lang/String;)Z

    return-object v0
.end method

.method public final c()C
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/P;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jsoup/parser/P;->b:I

    iget-object p0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-object v0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/jsoup/parser/P;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lorg/jsoup/parser/P;->b:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Queue not long enough to consume sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Queue did not match expected sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs e([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    iget v0, p0, Lorg/jsoup/parser/P;->b:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v3

    iget-object v4, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    iget v3, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v5, p0, Lorg/jsoup/parser/P;->b:I

    sub-int/2addr v3, v5

    if-le v3, v6, :cond_0

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Lorg/jsoup/parser/P;->b:I

    move v2, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    array-length v3, p1

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v7, p1, v5

    invoke-virtual {p0, v7}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_2
    iget v3, p0, Lorg/jsoup/parser/P;->b:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/jsoup/parser/P;->b:I

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget p0, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v4, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_4

    invoke-static {p0}, Lorg/jsoup/parser/P;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public final f()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    iget v2, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, LPd/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lorg/jsoup/parser/P;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/P;->b:I

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lorg/jsoup/parser/P;->b:I

    sub-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/P;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/jsoup/parser/P;->b:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 6

    iget v2, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final varargs j([C)Z
    .locals 6

    invoke-virtual {p0}, Lorg/jsoup/parser/P;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    iget-object v4, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    iget v5, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/jsoup/parser/P;->b:I

    iget-object v1, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lorg/jsoup/parser/P;->b:I

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/P;->a:Ljava/lang/String;

    iget p0, p0, Lorg/jsoup/parser/P;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
