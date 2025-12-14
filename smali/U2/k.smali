.class public final LU2/k;
.super LU2/j;
.source "SourceFile"

# interfaces
.implements LT2/h;


# instance fields
.field public final b:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0, p1}, LU2/j;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    iput-object p1, p0, LU2/k;->b:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final P()J
    .locals 2

    iget-object p0, p0, LU2/k;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final execute()V
    .locals 0

    iget-object p0, p0, LU2/k;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public final u()I
    .locals 0

    iget-object p0, p0, LU2/k;->b:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result p0

    return p0
.end method
