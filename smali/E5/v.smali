.class public final LE5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/glance/appwidget/protobuf/B;
.implements Lib/g;
.implements LQ3/i;
.implements Lm4/a;
.implements LT2/d;
.implements LW3/u;
.implements Landroidx/databinding/c;
.implements Lic/r;
.implements Lm4/c;
.implements Ln5/c;
.implements Ls0/g;
.implements Lvd/b;


# static fields
.field public static b:LE5/v;

.field public static c:LE5/v;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LE5/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, LD0/b;

    invoke-direct {p0}, LD0/b;-><init>()V

    new-instance p0, LD0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LD0/a;->a:[I

    iput-object v0, p0, LD0/c;->a:[I

    sget-object v0, LD0/a;->b:[Ljava/lang/Object;

    iput-object v0, p0, LD0/c;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LD0/c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LE5/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)LI3/a;
    .locals 1

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    new-instance v0, LI3/a;

    invoke-direct {v0, p0}, LI3/a;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public static h(Lt1/b;Landroid/text/Editable;IIZ)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    if-ltz p2, :cond_19

    if-gez p3, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_19

    if-eq v2, v3, :cond_19

    if-eq v1, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v4, 0x1

    if-eqz p4, :cond_16

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ltz v1, :cond_3

    if-ge p4, v1, :cond_2

    goto :goto_0

    :cond_2
    if-gez p2, :cond_4

    :cond_3
    :goto_0
    move v1, v3

    goto :goto_3

    :cond_4
    :goto_1
    move p4, v0

    :goto_2
    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_7

    if-eqz p4, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_3

    :cond_7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_9

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_9
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_a

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_a
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_b

    goto :goto_0

    :cond_b
    move p4, v4

    goto :goto_2

    :goto_3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-ltz v2, :cond_d

    if-ge p3, v2, :cond_c

    goto :goto_4

    :cond_c
    if-gez p2, :cond_e

    :cond_d
    :goto_4
    move p3, v3

    goto :goto_7

    :cond_e
    :goto_5
    move p4, v0

    :goto_6
    if-nez p2, :cond_f

    move p3, v2

    goto :goto_7

    :cond_f
    if-lt v2, p3, :cond_10

    if-eqz p4, :cond_15

    goto :goto_4

    :cond_10
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eqz p4, :cond_12

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-nez p4, :cond_11

    goto :goto_4

    :cond_11
    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    invoke-static {v5}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_4

    :cond_14
    add-int/lit8 v2, v2, 0x1

    move p4, v4

    goto :goto_6

    :cond_15
    :goto_7
    if-eq v1, v3, :cond_19

    if-ne p3, v3, :cond_17

    goto :goto_9

    :cond_16
    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v2, p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_17
    const-class p2, Landroidx/emoji2/text/s;

    invoke-interface {p1, v1, p3, p2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/s;

    if-eqz p2, :cond_19

    array-length p4, p2

    if-lez p4, :cond_19

    array-length p4, p2

    move v2, v0

    :goto_8
    if-ge v2, p4, :cond_18

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_18
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->beginBatchEdit()Z

    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->endBatchEdit()Z

    move v0, v4

    :cond_19
    :goto_9
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ln5/b;)LN3/e;
    .locals 1

    new-instance p0, LN3/e;

    invoke-direct {p0}, LN3/e;-><init>()V

    invoke-interface {p3, p1, p2}, Ln5/b;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LN3/e;->a:I

    const/4 v0, 0x1

    invoke-interface {p3, p1, p2, v0}, Ln5/b;->e(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, LN3/e;->b:I

    iget p2, p0, LN3/e;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, LN3/e;->c:I

    goto :goto_0

    :cond_0
    if-lt p1, p2, :cond_1

    iput v0, p0, LN3/e;->c:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, LN3/e;->c:I

    :goto_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string p0, "message"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lqd/n;->a:Lqd/n;

    sget-object p0, Lqd/n;->a:Lqd/n;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lqd/n;->j(Lqd/n;Ljava/lang/String;II)V

    return-void
.end method

.method public create()Ljava/lang/Object;
    .locals 0

    new-instance p0, LS3/B;

    invoke-direct {p0}, LS3/B;-><init>()V

    return-object p0
.end method

.method public d(LT2/c;)LT2/e;
    .locals 6

    new-instance p0, LU2/i;

    iget-object v0, p1, LT2/c;->d:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p1, LT2/c;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, LT2/b;

    iget-object v0, p1, LT2/c;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-boolean v4, p1, LT2/c;->b:Z

    iget-boolean v5, p1, LT2/c;->c:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LU2/i;-><init>(Landroid/content/Context;Ljava/lang/String;LT2/b;ZZ)V

    return-object p0
.end method

.method public f([BLjava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public g()LA4/e;
    .locals 1

    sget-object v0, LA4/e;->f:LA4/e;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, LA4/e;->f:LA4/e;

    if-nez v0, :cond_0

    new-instance v0, LA4/e;

    invoke-direct {v0}, LA4/e;-><init>()V

    sput-object v0, LA4/e;->f:LA4/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k(J)V
    .locals 0

    return-void
.end method

.method public l(J)V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LE5/v;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "RectangleShape"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public y(LW3/z;)LW3/t;
    .locals 2

    new-instance p0, LW3/B;

    const-class v0, LW3/j;

    const-class v1, Ljava/io/InputStream;

    invoke-virtual {p1, v0, v1}, LW3/z;->a(Ljava/lang/Class;Ljava/lang/Class;)LW3/t;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LW3/B;-><init>(LW3/t;I)V

    return-object p0
.end method
