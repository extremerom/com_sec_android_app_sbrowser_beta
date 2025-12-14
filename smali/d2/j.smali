.class public final Ld2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/g;


# static fields
.field public static final a:Ld2/j;

.field public static b:LUc/e;

.field public static final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld2/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld2/j;->a:Ld2/j;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ld2/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileKey"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ld2/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LNc/B;

    if-eqz v0, :cond_1

    invoke-static {v0}, LNc/E;->u(LNc/B;)Z

    move-result v1

    const-string v2, "GWT:GlanceStateDefinition"

    if-eqz v1, :cond_0

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v3, " Cancel an already running DataStore coroutine."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " Remove an already running DataStore coroutine."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/B;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileKey"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LA/b;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    sget-object p0, Ld2/j;->b:LUc/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "create PreferenceDataStore / "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "msg"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GWT:GlanceStateDefinition"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, LA0/g;

    sget-object v0, Ld2/i;->a:Ld2/i;

    invoke-direct {p0, v0}, LA0/g;-><init>(Lsb/k;)V

    sget-object v0, Ld2/j;->b:LUc/e;

    if-eqz v0, :cond_0

    new-instance v1, Ld2/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Ld2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v1, p1}, Lp1/e;->d(LA0/g;LUc/e;Lsb/a;I)Lp1/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ld2/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ld2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p1}, Lp1/e;->d(LA0/g;LUc/e;Lsb/a;I)Lp1/d;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    invoke-static {}, LG5/n;->b()Lp1/b;

    move-result-object p0

    return-object p0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Ld2/c;)Lp1/d;
    .locals 4

    invoke-static {p1, p2}, LA/b;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    sget-object v0, Ld2/j;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOrPutDataStore / "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "msg"

    invoke-static {p3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "GWT:GlanceStateDefinition"

    invoke-static {v1, v2, p3, v3}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, LA/b;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Ld2/j;->d(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    sget-object p3, LNc/N;->c:LWc/e;

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v1

    invoke-virtual {p3, v1}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p3

    invoke-static {p3}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p3

    sput-object p3, Ld2/j;->b:LUc/e;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Ld2/j;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp1/d;

    return-object p0
.end method
