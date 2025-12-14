.class public final Lb0/d;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/d;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/d;->c:Lb0/d;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p0

    invoke-virtual {p3, p0}, La0/y0;->a(I)V

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "distance"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
