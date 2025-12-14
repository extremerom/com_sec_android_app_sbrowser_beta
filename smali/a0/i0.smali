.class public final La0/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:La0/u;

.field public c:La0/c;

.field public d:Lsb/n;

.field public e:I

.field public f:LN/r;

.field public g:LN/s;


# direct methods
.method public constructor <init>(La0/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/i0;->b:La0/u;

    return-void
.end method

.method public static a(La0/E;LN/s;)Z
    .locals 4

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v0

    iget-object v1, p0, La0/E;->c:La0/C;

    invoke-static {v1, v0}, Lk0/n;->j(Lk0/t;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, La0/C;

    const/4 v2, 0x0

    iget-object v3, p0, La0/E;->b:LA1/d;

    invoke-virtual {p0, v1, v0, v2, v3}, La0/E;->c(La0/C;Lk0/h;ZLA1/d;)La0/C;

    move-result-object v0

    iget-object v0, v0, La0/C;->f:Ljava/lang/Object;

    invoke-virtual {p1, p0}, LN/s;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, La0/i0;->b:La0/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, La0/i0;->c:La0/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La0/c;->a()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final c(Ljava/lang/Object;)La0/O;
    .locals 1

    iget-object v0, p0, La0/i0;->b:La0/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, La0/u;->p(La0/i0;Ljava/lang/Object;)La0/O;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, La0/O;->IGNORED:La0/O;

    :cond_1
    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, La0/i0;->b:La0/u;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, La0/u;->o:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, La0/i0;->b:La0/u;

    iput-object v0, p0, La0/i0;->f:LN/r;

    iput-object v0, p0, La0/i0;->g:LN/s;

    return-void
.end method

.method public final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, La0/i0;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, La0/i0;->a:I

    goto :goto_0

    :cond_0
    iget p1, p0, La0/i0;->a:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, La0/i0;->a:I

    :goto_0
    return-void
.end method
