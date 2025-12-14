.class public final LU/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/x;


# static fields
.field public static final a:LU/C;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LU/C;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LU/C;->a:LU/C;

    return-void
.end method


# virtual methods
.method public final a(LB0/I;Ljava/util/List;J)Lz0/y;
    .locals 2

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result p0

    invoke-static {p3, p4}, LH0/a;->d(J)I

    move-result p2

    const/4 v0, 0x0

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p3, p4}, LH0/a;->b(J)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result p2

    invoke-static {p3, p4}, LH0/a;->c(J)I

    move-result v1

    if-ne p2, v1, :cond_2

    invoke-static {p3, p4}, LH0/a;->a(J)I

    move-result v0

    :cond_2
    sget-object p2, LU/f;->c:LU/f;

    sget-object p3, Lfb/w;->a:Lfb/w;

    invoke-virtual {p1, p0, v0, p3, p2}, LB0/I;->l(IILjava/util/Map;Lsb/k;)Lz0/y;

    move-result-object p0

    return-object p0
.end method
