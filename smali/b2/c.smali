.class public abstract Lb2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LE5/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE5/v;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Lb2/c;->a:LE5/v;

    return-void
.end method

.method public static final a(Lx1/r;Lsb/k;)Lx1/r;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "properties"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb2/a;

    invoke-direct {v0}, Lb2/a;-><init>()V

    invoke-interface {p1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lb2/b;

    invoke-direct {p1, v0}, Lb2/b;-><init>(Lb2/a;)V

    invoke-interface {p0, p1}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lb2/a;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "key"

    sget-object v1, Lb2/c;->a:LE5/v;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb2/a;->a:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
