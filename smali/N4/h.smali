.class public final synthetic LN4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LN4/k;

.field public final synthetic c:LH4/k;


# direct methods
.method public synthetic constructor <init>(LN4/k;LH4/k;I)V
    .locals 0

    iput p3, p0, LN4/h;->a:I

    iput-object p1, p0, LN4/h;->b:LN4/k;

    iput-object p2, p0, LN4/h;->c:LH4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LN4/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN4/h;->b:LN4/k;

    iget-object v0, v0, LN4/k;->c:LO4/d;

    check-cast v0, LO4/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LHa/a;

    iget-object p0, p0, LN4/h;->c:LH4/k;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0, p0}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LO4/h;->c(LO4/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0

    :pswitch_0
    iget-object v0, p0, LN4/h;->c:LH4/k;

    iget-object p0, p0, LN4/h;->b:LN4/k;

    iget-object p0, p0, LN4/k;->c:LO4/d;

    check-cast p0, LO4/h;

    invoke-virtual {p0}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {v1, v0}, LO4/h;->b(Landroid/database/sqlite/SQLiteDatabase;LH4/k;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO4/h;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v2, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    invoke-virtual {p0, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p0, v0

    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
