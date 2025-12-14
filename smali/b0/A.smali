.class public final Lb0/A;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/A;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/A;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/A;->c:Lb0/A;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p1

    :goto_0
    if-ge p0, p1, :cond_0

    invoke-virtual {p2}, LJ2/i0;->u()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "count"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
