.class public final synthetic LU2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/p;


# instance fields
.field public final synthetic a:LT2/g;


# direct methods
.method public synthetic constructor <init>(LT2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/b;->a:LT2/g;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    new-instance p1, LU2/j;

    invoke-static {p4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p1, p4}, LU2/j;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iget-object p0, p0, LU2/b;->a:LT2/g;

    invoke-interface {p0, p1}, LT2/g;->e(LT2/f;)V

    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object p0
.end method
