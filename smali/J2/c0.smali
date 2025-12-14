.class public final LJ2/c0;
.super LT2/b;
.source "SourceFile"


# instance fields
.field public b:LJ2/c;

.field public final c:Ljava/util/List;

.field public final d:LB3/c;


# direct methods
.method public constructor <init>(LJ2/c;LB3/c;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-direct {p0, v0}, LT2/b;-><init>(I)V

    iget-object v0, p1, LJ2/c;->e:Ljava/util/List;

    iput-object v0, p0, LJ2/c0;->c:Ljava/util/List;

    iput-object p1, p0, LJ2/c0;->b:LJ2/c;

    iput-object p2, p0, LJ2/c0;->d:LB3/c;

    return-void
.end method


# virtual methods
.method public final g(LU2/c;)V
    .locals 0

    return-void
.end method

.method public final h(LU2/c;)V
    .locals 4

    new-instance v0, LA7/h;

    const-string v1, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-direct {v0, v1}, LA7/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LU2/c;->N(LT2/g;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v0, p0, LJ2/c0;->d:LB3/c;

    invoke-static {p1}, LB3/c;->l(LU2/c;)V

    if-nez v1, :cond_2

    invoke-static {p1}, LB3/c;->q(LU2/c;)LJ2/b0;

    move-result-object v1

    iget-boolean v3, v1, LJ2/b0;->b:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LJ2/b0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v1}, LU2/c;->s(Ljava/lang/String;)V

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'7d73d21f1bd82c9e5268b6dcf9fde2cb\')"

    invoke-virtual {p1, v1}, LU2/c;->s(Ljava/lang/String;)V

    iget-object v0, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->n(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->o(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->p(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ2/O;

    invoke-virtual {v3, p1}, LJ2/O;->onCreate(LT2/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object p0, p0, LJ2/c0;->c:Ljava/util/List;

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ2/O;

    invoke-virtual {v0, p1}, LJ2/O;->onCreate(LT2/a;)V

    goto :goto_3

    :cond_4
    return-void

    :goto_4
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final i(LU2/c;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LJ2/c0;->k(LU2/c;II)V

    return-void
.end method

.method public final j(LU2/c;)V
    .locals 5

    new-instance v0, LA7/h;

    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    invoke-direct {v0, v1}, LA7/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, LU2/c;->N(LT2/g;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v3}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v0, p0, LJ2/c0;->d:LB3/c;

    if-eqz v1, :cond_3

    new-instance v1, LA7/h;

    const-string v4, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v4}, LA7/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, LU2/c;->N(LT2/g;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-static {v1, v3}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v1, "7d73d21f1bd82c9e5268b6dcf9fde2cb"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3071c8717539de5d5353f4c8cd59a032"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: 7d73d21f1bd82c9e5268b6dcf9fde2cb, found: "

    invoke-static {p1, v4}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-static {p1}, LB3/c;->q(LU2/c;)LJ2/b0;

    move-result-object v1

    iget-boolean v4, v1, LJ2/b0;->b:Z

    if-eqz v4, :cond_7

    const-string v1, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, v1}, LU2/c;->s(Ljava/lang/String;)V

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'7d73d21f1bd82c9e5268b6dcf9fde2cb\')"

    invoke-virtual {p1, v1}, LU2/c;->s(Ljava/lang/String;)V

    :cond_4
    :goto_3
    iget-object v0, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {v0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->q(Landroidx/work/impl/WorkDatabase_Impl;LU2/c;)V

    const-string v1, "PRAGMA foreign_keys = ON"

    invoke-virtual {p1, v1}, LU2/c;->s(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, LJ2/U;->internalInitInvalidationTracker(LT2/a;)V

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->r(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->s(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    if-ge v2, v1, :cond_5

    invoke-static {v0}, Landroidx/work/impl/WorkDatabase_Impl;->l(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LJ2/O;

    invoke-virtual {v4, p1}, LJ2/O;->onOpen(LT2/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, LJ2/c0;->c:Ljava/util/List;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ2/O;

    invoke-virtual {v1, p1}, LJ2/O;->onOpen(LT2/a;)V

    goto :goto_5

    :cond_6
    iput-object v3, p0, LJ2/c0;->b:LJ2/c;

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LJ2/b0;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_6
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v0, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final k(LU2/c;II)V
    .locals 4

    iget-object v0, p0, LJ2/c0;->b:LJ2/c;

    iget-object v1, p0, LJ2/c0;->d:LB3/c;

    if-eqz v0, :cond_2

    iget-object v0, v0, LJ2/c;->d:LJ2/S;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2, p3}, LAb/E;->g(LJ2/S;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance p0, LM2/a;

    invoke-direct {p0, p1}, LM2/a;-><init>(LT2/a;)V

    invoke-static {p0}, LA/b;->b(LS2/a;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LN2/a;

    new-instance p3, LM2/a;

    invoke-direct {p3, p1}, LM2/a;-><init>(LT2/a;)V

    invoke-virtual {p2, p3}, LN2/a;->migrate(LS2/a;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, LB3/c;->q(LU2/c;)LJ2/b0;

    move-result-object p0

    iget-boolean p2, p0, LJ2/b0;->b:Z

    if-eqz p2, :cond_1

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p1, p0}, LU2/c;->s(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'7d73d21f1bd82c9e5268b6dcf9fde2cb\')"

    invoke-virtual {p1, p0}, LU2/c;->s(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LJ2/b0;->a:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, LJ2/c0;->b:LJ2/c;

    if-eqz v0, :cond_a

    invoke-static {v0, p2, p3}, LAb/E;->j(LJ2/c;II)Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean p2, v0, LJ2/c;->s:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    new-instance p2, LA7/h;

    const-string v0, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    invoke-direct {p2, v0}, LA7/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, LU2/c;->N(LT2/g;)Landroid/database/Cursor;

    move-result-object p2

    :try_start_0
    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v2, "sqlite_"

    invoke-static {v1, v2, p3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android_metadata"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "view"

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ldb/j;

    invoke-direct {v3, v1, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lgb/c;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    invoke-static {v0}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {p2, v1}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p3}, Lgb/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    :goto_2
    move-object p3, p2

    check-cast p3, Lgb/a;

    invoke-virtual {p3}, Lgb/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lgb/a;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ldb/j;

    iget-object v0, p3, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p3, p3, Ldb/j;->b:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LU2/c;->s(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, LU2/c;->s(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {p2, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    const-string p2, "DROP TABLE IF EXISTS `Dependency`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS `WorkSpec`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS `WorkTag`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS `SystemIdInfo`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS `WorkName`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS `WorkProgress`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS `Preference`"

    invoke-virtual {p1, p2}, LU2/c;->s(Ljava/lang/String;)V

    iget-object p2, v1, LB3/c;->a:Ljava/lang/Object;

    check-cast p2, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-static {p2}, Landroidx/work/impl/WorkDatabase_Impl;->j(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Landroidx/work/impl/WorkDatabase_Impl;->k(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge p3, v0, :cond_8

    invoke-static {p2}, Landroidx/work/impl/WorkDatabase_Impl;->m(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ2/O;

    invoke-virtual {v1, p1}, LJ2/O;->onDestructiveMigration(LT2/a;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    iget-object p0, p0, LJ2/c0;->c:Ljava/util/List;

    if-eqz p0, :cond_9

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LJ2/O;

    invoke-virtual {p2, p1}, LJ2/O;->onDestructiveMigration(LT2/a;)V

    goto :goto_5

    :cond_9
    invoke-static {p1}, LB3/c;->l(LU2/c;)V

    :goto_6
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A migration from "

    const-string v0, " to "

    const-string v1, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-static {p2, p3, p1, v0, v1}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
