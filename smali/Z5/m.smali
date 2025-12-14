.class public final LZ5/m;
.super Ld5/a;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder;III)V
    .locals 0

    iput p4, p0, LZ5/m;->d:I

    invoke-direct {p0, p1, p2}, Ld5/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iput p3, p0, LZ5/m;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, LZ5/m;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "DataItem"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget v1, p0, Ld5/a;->b:I

    iget v2, p0, Ld5/a;->c:I

    iget-object v3, p0, Ld5/a;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v4, "data"

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v5, v3, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v2, v5, v2

    iget-object v5, v3, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    iget v4, p0, LZ5/m;->e:I

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    new-instance v6, LZ5/n;

    iget v7, p0, Ld5/a;->b:I

    add-int/2addr v7, v5

    invoke-direct {v6, v3, v7}, Ld5/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iget v7, v6, Ld5/a;->b:I

    iget v8, v6, Ld5/a;->c:I

    iget-object v9, v6, Ld5/a;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v10, "asset_key"

    invoke-virtual {v9, v7, v10}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v11, v9, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v8, v11, v8

    iget-object v11, v9, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v11, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v8, v7, v11}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v7, v6, Ld5/a;->b:I

    iget v8, v6, Ld5/a;->c:I

    invoke-virtual {v9, v7, v10}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v11, v9, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v8, v11, v8

    iget-object v9, v9, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v7, v9}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DataItemRef{ "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ld5/a;->b:I

    iget p0, p0, Ld5/a;->c:I

    const-string v6, "path"

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v7, v3, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object p0, v7, p0

    iget-object v3, v3, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "uri="

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string p0, "null"

    goto :goto_1

    :cond_2
    array-length p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    const-string v1, ", dataSz="

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", numAssets="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, ", assets=["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY5/d;

    invoke-interface {v1}, LY5/d;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    goto :goto_2

    :cond_3
    const-string p0, "]"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p0, " }"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget v0, p0, Ld5/a;->b:I

    iget v1, p0, Ld5/a;->c:I

    iget-object v2, p0, Ld5/a;->a:Lcom/google/android/gms/common/data/DataHolder;

    const-string v3, "event_type"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v1, v4, v1

    iget-object v4, v2, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const-string v0, "changed"

    goto :goto_3

    :cond_5
    iget v0, p0, Ld5/a;->b:I

    iget v1, p0, Ld5/a;->c:I

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v4, v2, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v1, v4, v1

    iget-object v4, v2, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const-string v0, "deleted"

    goto :goto_3

    :cond_6
    const-string v0, "unknown"

    :goto_3
    new-instance v1, LZ5/m;

    iget v3, p0, Ld5/a;->b:I

    iget p0, p0, LZ5/m;->e:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, p0, v4}, LZ5/m;-><init>(Lcom/google/android/gms/common/data/DataHolder;III)V

    invoke-virtual {v1}, LZ5/m;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DataEventRef{ type="

    const-string v2, ", dataitem="

    const-string v3, " }"

    invoke-static {v1, v0, v2, p0, v3}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
