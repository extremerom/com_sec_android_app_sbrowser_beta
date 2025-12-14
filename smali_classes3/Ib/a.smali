.class public final LIb/a;
.super Lrc/h;
.source "SourceFile"


# static fields
.field public static final e:Lhc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "clone"

    invoke-static {v0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v0

    sput-object v0, LIb/a;->e:Lhc/f;

    return-void
.end method


# virtual methods
.method public final h()Ljava/util/List;
    .locals 12

    sget-object v0, LJb/c;->DECLARATION:LJb/c;

    sget-object v1, LJb/S;->L:LJb/T;

    iget-object p0, p0, Lrc/h;->b:LMb/c;

    sget-object v2, LIb/a;->e:Lhc/f;

    invoke-static {p0, v2, v0, v1}, LMb/M;->f1(LJb/f;Lhc/f;LJb/c;LJb/S;)LMb/M;

    move-result-object v0

    invoke-virtual {p0}, LMb/c;->C0()LMb/w;

    move-result-object v5

    sget-object v8, Lfb/v;->a:Lfb/v;

    invoke-static {p0}, Loc/d;->e(LJb/l;)LGb/i;

    move-result-object p0

    invoke-virtual {p0}, LGb/i;->e()Lyc/A;

    move-result-object v9

    sget-object v10, LJb/B;->OPEN:LJb/B;

    sget-object v11, LJb/q;->c:LJb/p;

    const/4 v4, 0x0

    move-object v3, v0

    move-object v6, v8

    move-object v7, v8

    invoke-virtual/range {v3 .. v11}, LMb/M;->h1(LMb/w;LMb/w;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyc/w;LJb/B;LJb/p;)LMb/M;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
