.class public final Lb0/g;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/g;->c:Lb0/g;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    const-string p0, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>"

    invoke-static {p2, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    array-length p3, p1

    :goto_0
    if-ge p0, p3, :cond_0

    aget-object p4, p1, p0

    invoke-virtual {p2, p4}, LJ2/i0;->f(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "nodes"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
