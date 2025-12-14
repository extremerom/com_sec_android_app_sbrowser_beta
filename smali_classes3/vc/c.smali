.class public final Lvc/c;
.super LMb/D;
.source "SourceFile"

# interfaces
.implements LJb/H;


# instance fields
.field public final h:Ldc/a;

.field public final i:Lcom/google/android/gms/internal/auth/j;

.field public final j:Lo3/i;

.field public k:Lcc/G;

.field public l:Lwc/q;


# direct methods
.method public constructor <init>(Lhc/c;Lxc/o;LJb/C;Lcc/G;Ldc/a;)V
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "module"

    invoke-static {p3, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, LMb/D;-><init>(LJb/C;Lhc/c;)V

    iput-object p5, p0, Lvc/c;->h:Ldc/a;

    new-instance p1, Lcom/google/android/gms/internal/auth/j;

    iget-object p2, p4, Lcc/G;->d:Lcc/N;

    const-string p3, "getStrings(...)"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p4, Lcc/G;->e:Lcc/M;

    const-string v0, "getQualifiedNames(...)"

    invoke-static {p3, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiedNames"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p3, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    iput-object p1, p0, Lvc/c;->i:Lcom/google/android/gms/internal/auth/j;

    new-instance p2, Lo3/i;

    new-instance p3, LMb/a;

    const/16 v0, 0x14

    invoke-direct {p3, v0, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p1, p2, Lo3/i;->a:Ljava/lang/Object;

    iput-object p5, p2, Lo3/i;->b:Ljava/lang/Object;

    iput-object p3, p2, Lo3/i;->c:Ljava/lang/Object;

    iget-object p1, p4, Lcc/G;->g:Ljava/util/List;

    const-string p3, "getClass_List(...)"

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-static {p3}, Lfb/C;->g(I)I

    move-result p3

    const/16 p5, 0x10

    if-ge p3, p5, :cond_0

    move p3, p5

    :cond_0
    new-instance p5, Ljava/util/LinkedHashMap;

    invoke-direct {p5, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcc/k;

    iget-object v1, p2, Lo3/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/auth/j;

    iget v0, v0, Lcc/k;->e:I

    invoke-static {v1, v0}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object v0

    invoke-interface {p5, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object p5, p2, Lo3/i;->d:Ljava/lang/Object;

    iput-object p2, p0, Lvc/c;->j:Lo3/i;

    iput-object p4, p0, Lvc/c;->k:Lcc/G;

    return-void
.end method


# virtual methods
.method public final G()Lrc/o;
    .locals 0

    iget-object p0, p0, Lvc/c;->l:Lwc/q;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_memberScope"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final V0(Luc/k;)V
    .locals 11

    const-string v0, "components"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lvc/c;->k:Lcc/G;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lvc/c;->k:Lcc/G;

    new-instance v1, Lwc/q;

    iget-object v4, v0, Lcc/G;->f:Lcc/E;

    const-string v0, "getPackage(...)"

    invoke-static {v4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "scope of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, LDb/E;

    const/16 v0, 0x18

    invoke-direct {v10, v0, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    iget-object v6, p0, Lvc/c;->h:Ldc/a;

    const/4 v7, 0x0

    iget-object v5, p0, Lvc/c;->i:Lcom/google/android/gms/internal/auth/j;

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lwc/q;-><init>(LJb/H;Lcc/E;Lec/g;Lec/a;Lac/h;Luc/k;Ljava/lang/String;Lsb/a;)V

    iput-object v1, p0, Lvc/c;->l:Lwc/q;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "builtins package fragment for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LMb/D;->f:Lhc/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Loc/d;->j(LJb/l;)LJb/C;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
