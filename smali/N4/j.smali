.class public final synthetic LN4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP4/b;
.implements LO4/f;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, LN4/j;->b:Ljava/lang/Object;

    iput-object p4, p0, LN4/j;->c:Ljava/lang/Object;

    iput-wide p1, p0, LN4/j;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, LN4/j;->c:Ljava/lang/Object;

    check-cast v0, LK4/c;

    invoke-virtual {v0}, LK4/c;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LN4/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    invoke-virtual {p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v3, LA9/b;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, LA9/b;-><init>(I)V

    invoke-static {v1, v3}, LO4/h;->j(Landroid/database/Cursor;LO4/f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    iget-wide v4, p0, LN4/j;->a:J

    if-nez v1, :cond_0

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "log_source"

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LK4/c;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "events_dropped_count"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "log_event_dropped"

    invoke-virtual {p1, v0, v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " WHERE log_source = ? AND reason = ?"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, LK4/c;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v3
.end method

.method public execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LN4/j;->b:Ljava/lang/Object;

    check-cast v0, LN4/k;

    iget-object v1, v0, LN4/k;->g:LQ4/a;

    invoke-interface {v1}, LQ4/a;->b()J

    move-result-wide v1

    iget-wide v3, p0, LN4/j;->a:J

    add-long/2addr v1, v3

    iget-object v0, v0, LN4/k;->c:LO4/d;

    check-cast v0, LO4/h;

    iget-object p0, p0, LN4/j;->c:Ljava/lang/Object;

    check-cast p0, LH4/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LO4/e;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, p0, v4}, LO4/e;-><init>(JLjava/lang/Object;I)V

    invoke-virtual {v0, v3}, LO4/h;->c(LO4/f;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method
