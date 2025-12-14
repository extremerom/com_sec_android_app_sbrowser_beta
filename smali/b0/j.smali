.class public final Lb0/j;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/j;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/j;->c:Lb0/j;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 0

    const-string p0, "null cannot be cast to non-null type androidx.compose.runtime.Applier<kotlin.Any?>"

    invoke-static {p2, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget p0, p3, La0/y0;->u:I

    if-gez p0, :cond_0

    iget p1, p3, La0/y0;->t:I

    if-gtz p1, :cond_1

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    invoke-virtual {p3}, La0/y0;->i()V

    return-void

    :cond_2
    invoke-virtual {p3}, La0/y0;->C()V

    iget p0, p3, La0/y0;->u:I

    iget-object p1, p3, La0/y0;->b:[I

    invoke-virtual {p3, p0}, La0/y0;->p(I)I

    move-result p0

    invoke-static {p0, p1}, La0/d;->k(I[I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, LJ2/i0;->u()V

    :cond_3
    invoke-virtual {p3}, La0/y0;->i()V

    goto :goto_0
.end method
