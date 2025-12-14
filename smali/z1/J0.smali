.class public final Lz1/J0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/g;


# static fields
.field public static final a:Lz1/J0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/J0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/J0;->a:Lz1/J0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileKey"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LOd/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    sget-object v2, LF1/n;->a:LF1/n;

    new-instance v1, Ld2/h;

    const/4 p0, 0x2

    invoke-direct {v1, p1, p2, p0}, Ld2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    sget-object p1, LNc/N;->c:LWc/e;

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v5

    new-instance v4, LR7/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lm1/d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lm1/d;-><init>(Ljava/util/List;Lib/c;)V

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance p0, Lm1/G;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lm1/G;-><init>(Lsb/a;Lm1/k;Ljava/util/List;Lm1/b;LNc/B;)V

    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    invoke-static {}, LF1/f;->p()LF1/f;

    move-result-object p0

    const-string v0, "getDefaultInstance(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
