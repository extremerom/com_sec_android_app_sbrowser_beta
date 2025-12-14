.class public final Lb0/n;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/n;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/n;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/n;->c:Lb0/n;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/w0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/c;

    invoke-virtual {p3}, La0/y0;->d()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, La0/w0;->g(La0/c;)I

    move-result p1

    invoke-virtual {p3, p0, p1}, La0/y0;->t(La0/w0;I)V

    invoke-virtual {p3}, La0/y0;->j()V

    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "anchor"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "from"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
