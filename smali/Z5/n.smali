.class public final LZ5/n;
.super Ld5/a;
.source "SourceFile"

# interfaces
.implements LY5/d;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ld5/a;->b:I

    iget v1, p0, Ld5/a;->c:I

    iget-object p0, p0, Ld5/a;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v2, "asset_key"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v1, v3, v1

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 4

    iget v0, p0, Ld5/a;->b:I

    iget v1, p0, Ld5/a;->c:I

    iget-object p0, p0, Ld5/a;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v2, "asset_id"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v1, v3, v1

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
