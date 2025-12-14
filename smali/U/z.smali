.class public abstract LU/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU/p;

.field public static final b:LU/p;

.field public static final c:LU/p;

.field public static final d:LU/E;

.field public static final e:LU/E;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LU/p;

    sget-object v1, LU/n;->Horizontal:LU/n;

    new-instance v2, LU/f;

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, LU/f;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v4, v2}, LU/p;-><init>(LU/n;FLsb/k;)V

    sput-object v0, LU/z;->a:LU/p;

    new-instance v0, LU/p;

    sget-object v2, LU/n;->Vertical:LU/n;

    new-instance v5, LU/f;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, LU/f;-><init>(II)V

    invoke-direct {v0, v2, v4, v5}, LU/p;-><init>(LU/n;FLsb/k;)V

    sput-object v0, LU/z;->b:LU/p;

    new-instance v0, LU/p;

    sget-object v2, LU/n;->Both:LU/n;

    new-instance v5, LU/f;

    const/4 v6, 0x3

    invoke-direct {v5, v3, v6}, LU/f;-><init>(II)V

    invoke-direct {v0, v2, v4, v5}, LU/p;-><init>(LU/n;FLsb/k;)V

    sput-object v0, LU/z;->c:LU/p;

    const-string v0, "direction"

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lm0/a;->e:Lm0/c;

    const/4 v3, 0x0

    invoke-static {v1, v3}, LU/z;->a(Lm0/c;Z)LU/E;

    move-result-object v1

    sput-object v1, LU/z;->d:LU/E;

    sget-object v1, Lm0/a;->d:Lm0/c;

    invoke-static {v1, v3}, LU/z;->a(Lm0/c;Z)LU/E;

    move-result-object v1

    sput-object v1, LU/z;->e:LU/E;

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lm0/c;Z)LU/E;
    .locals 7

    new-instance v6, LU/E;

    sget-object v1, LU/n;->Vertical:LU/n;

    new-instance v3, LB1/h;

    const/4 v0, 0x2

    invoke-direct {v3, v0, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    new-instance v5, LU/f;

    const/4 v0, 0x1

    const/4 v2, 0x5

    invoke-direct {v5, v0, v2}, LU/f;-><init>(II)V

    move-object v0, v6

    move v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, LU/E;-><init>(LU/n;ZLsb/n;Ljava/lang/Object;Lsb/k;)V

    return-object v6
.end method

.method public static b(Lm0/m;)Lm0/m;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU/z;->b:LU/p;

    invoke-interface {p0, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lm0/m;)Lm0/m;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LU/z;->a:LU/p;

    invoke-interface {p0, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p0

    return-object p0
.end method

.method public static d(F)Lm0/m;
    .locals 7

    new-instance v6, LU/B;

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v3, 0x0

    const/high16 v4, 0x7fc00000    # Float.NaN

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, LU/B;-><init>(FFFFI)V

    return-object v6
.end method

.method public static final e(F)Lm0/m;
    .locals 7

    new-instance v6, LU/B;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, v6

    move v1, p0

    move v3, p0

    invoke-direct/range {v0 .. v5}, LU/B;-><init>(FFFFI)V

    return-object v6
.end method

.method public static f(Lm0/m;)Lm0/m;
    .locals 2

    sget-object v0, Lm0/a;->e:Lm0/c;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Lm0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, LU/z;->d:LU/E;

    goto :goto_0

    :cond_0
    sget-object v1, Lm0/a;->d:Lm0/c;

    invoke-virtual {v0, v1}, Lm0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, LU/z;->e:LU/E;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, LU/z;->a(Lm0/c;Z)LU/E;

    move-result-object v0

    :goto_0
    invoke-interface {p0, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object p0

    return-object p0
.end method
