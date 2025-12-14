.class public final Landroidx/datastore/preferences/protobuf/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:I

.field public final synthetic d:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/g;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/g;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/glance/appwidget/protobuf/g;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {p1}, Landroidx/glance/appwidget/protobuf/g;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/auth/C;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/auth/C;->l()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/clearcut/k;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/k;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/vision/U;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/U;->i()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/h;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/h;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method

.method public constructor <init>(Lic/w;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget-object p1, p1, Lic/w;->b:[B

    array-length p1, p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    return-void
.end method


# virtual methods
.method public a()B
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast v0, Lic/w;

    iget-object v0, v0, Lic/w;->b:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    aget-byte p0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    :pswitch_3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    :goto_4
    return p0

    :pswitch_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_5

    :cond_5
    const/4 p0, 0x0

    :goto_5
    return p0

    :pswitch_5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_6

    :cond_6
    const/4 p0, 0x0

    :goto_6
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e;->a()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/h;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/h;->n(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast p0, Lcom/google/android/gms/internal/vision/U;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/U;->m(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/k;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/k;->l(I)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast p0, Lcom/google/android/gms/internal/auth/C;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/auth/C;->i(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_4
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast p0, Landroidx/glance/appwidget/protobuf/g;

    invoke-virtual {p0, v0}, Landroidx/glance/appwidget/protobuf/g;->n(I)B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_5
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e;->c:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e;->b:I

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/e;->d:Ljava/lang/Iterable;

    check-cast p0, Landroidx/datastore/preferences/protobuf/g;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/g;->b:[B

    aget-byte p0, p0, v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/e;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
