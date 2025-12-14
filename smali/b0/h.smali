.class public final Lb0/h;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/h;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/h;->c:Lb0/h;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsb/k;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/r;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string p0, "composition"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
