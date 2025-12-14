.class public final LU9/b;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;
.source "SourceFile"


# instance fields
.field public final e:LT2/c;

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LG6/f;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;-><init>(Landroid/content/Context;LG6/f;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, LU9/b;->f:Z

    iput p2, p0, LU9/b;->g:I

    sget v0, LG5/H;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, LT2/c;

    new-instance v1, LJ7/c;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, LJ7/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, v0, LT2/c;->b:Z

    iput-boolean p2, v0, LT2/c;->c:Z

    iput-object p1, v0, LT2/c;->a:Ljava/lang/Object;

    new-instance p1, LU9/a;

    invoke-direct {p1, v0, v1}, LU9/a;-><init>(LT2/c;LJ7/c;)V

    iput-object p1, v0, LT2/c;->e:Ljava/lang/Object;

    iput-object v0, p0, LU9/b;->e:LT2/c;

    invoke-virtual {v0}, LT2/c;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Ljava/util/HashMap;)I
    .locals 7

    const-string v0, "DMALogSender send"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget v0, LG5/H;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->a:Landroid/content/Context;

    invoke-static {v1}, LG5/H3;->i(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b:LG6/f;

    if-eqz v3, :cond_0

    invoke-static {v1}, LG5/G3;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "sendCommonSuccess"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, LU9/b;->f()V

    goto :goto_0

    :cond_0
    invoke-static {v1, v0, v4}, LG5/H3;->a(Landroid/content/Context;Landroid/content/ContentValues;LG6/f;)V

    :cond_1
    :goto_0
    const-string v3, "pd"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v3, "ps"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v3, "is"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "tcType"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v4, LG6/f;->e:Ljava/lang/Object;

    check-cast v2, LB3/c;

    invoke-virtual {v2}, LB3/c;->n()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "agree"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "tid"

    const-string v4, "705-399-1025610"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->a(Ljava/util/HashMap;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v4, "logType"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ts"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "timeStamp"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, LU9/b;->d(Ljava/util/HashMap;)Ljava/util/Map;

    sget-object v2, LZ9/c;->ONE_DEPTH:LZ9/c;

    invoke-static {p1, v2}, LG5/H3;->j(Ljava/util/Map;LZ9/c;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "body"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, LG5/H3;->i(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "networkType"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v2, "isSummary"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    new-instance p1, LU9/c;

    const/4 v2, 0x2

    invoke-direct {p1, v1, v2, v0}, LU9/c;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->d:Lu5/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lu5/d;->m(LJa/a;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, LU9/b;->e:LT2/c;

    iget-boolean v1, v0, LT2/c;->b:Z

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p0, -0x8

    return p0

    :cond_8
    iget v1, p0, LU9/b;->g:I

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget p0, p0, LU9/b;->g:I

    return p0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b(Ljava/util/HashMap;)V

    iget-boolean p1, v0, LT2/c;->c:Z

    if-nez p1, :cond_a

    invoke-virtual {v0}, LT2/c;->a()V

    goto :goto_1

    :cond_a
    iget-object p1, v0, LT2/c;->d:Ljava/lang/Object;

    check-cast p1, LKa/c;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, LU9/b;->e()V

    iget-boolean p1, p0, LU9/b;->f:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, LU9/b;->f()V

    iput-boolean v2, p0, LU9/b;->f:Z

    :cond_b
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget p0, p0, LU9/b;->g:I

    return p0
.end method

.method public final d(Ljava/util/HashMap;)Ljava/util/Map;
    .locals 2

    invoke-static {}, LG5/H3;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "tz"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final e()V
    .locals 5

    sget v0, LG5/H;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, LU9/b;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->c:LV9/a;

    invoke-virtual {v1, v0}, LV9/a;->b(I)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lo3/t;

    iget-object v2, p0, LU9/b;->e:LT2/c;

    iget-object v2, v2, LT2/c;->d:Ljava/lang/Object;

    check-cast v2, LKa/c;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;

    const/16 v4, 0x19

    invoke-direct {v1, v4}, Lo3/t;-><init>(I)V

    iput-object v3, v1, Lo3/t;->b:Ljava/lang/Object;

    iput-object v2, v1, Lo3/t;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b:LG6/f;

    iput-object v2, v1, Lo3/t;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->d:Lu5/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lu5/d;->m(LJa/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 7

    const-string v0, "DMALogSender sendCommon"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b:LG6/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->a:Landroid/content/Context;

    invoke-static {v2}, LG5/s3;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "av"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, LG6/f;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, "uv"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "v"

    const-string v4, "6.05.081"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, LZ9/c;->ONE_DEPTH:LZ9/c;

    invoke-static {v1, v3}, LG5/H3;->j(Ljava/util/Map;LZ9/c;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "auid"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, LG6/f;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "at"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, LG5/H3;->j(Ljava/util/Map;LZ9/c;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    sget v0, LG5/H;->a:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "tcType"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "tid"

    const-string v4, "705-399-1025610"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "did"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, LU9/c;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, LU9/c;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->d:Lu5/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lu5/d;->m(LJa/a;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, LU9/b;->e:LT2/c;

    iget-object v0, v0, LT2/c;->d:Ljava/lang/Object;

    check-cast v0, LKa/c;

    check-cast v0, LKa/a;

    invoke-virtual {v0, v1, v5}, LKa/a;->v0(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, LU9/b;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to send app common"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG5/F3;->j(Ljava/lang/String;)V

    const/16 v0, -0x9

    iput v0, p0, LU9/b;->g:I

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
