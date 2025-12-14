.class public abstract LJ8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/u;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LJ8/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput p1, p0, LJ8/i;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/FileReader;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, LJ8/i;->c:Ljava/lang/Object;

    new-instance p2, Landroid/util/JsonReader;

    invoke-direct {p2, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, LJ8/i;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/FileWriter;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, LJ8/i;->c:Ljava/lang/Object;

    new-instance p2, Landroid/util/JsonWriter;

    invoke-direct {p2, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    iput-object p2, p0, LJ8/i;->b:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, LJ8/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ8/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LJ8/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ8/i;->b:Ljava/lang/Object;

    iput-object p2, p0, LJ8/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm/w;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, LJ8/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ8/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Luc/m;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, LJ8/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ8/i;->c:Ljava/lang/Object;

    iput-object p2, p0, LJ8/i;->b:Ljava/lang/Object;

    return-void
.end method

.method public static k(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    const-string v2, "files"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "path"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file path : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RecordReader"

    invoke-static {v4, v3}, LK8/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget v0, p0, LJ8/i;->a:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonWriter;

    invoke-virtual {v0}, Landroid/util/JsonWriter;->close()V

    iget-object p0, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/FileWriter;

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    iget-object p0, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/FileReader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public abstract d(Lcom/google/firebase/messaging/q;)V
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v0, LA7/j;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast v1, Lm/w;

    iget-object v1, v1, Lm/w;->k:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, LJ8/i;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract f()Landroid/content/IntentFilter;
.end method

.method public g(J)[B
    .locals 5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-wide/16 v2, 0x1000

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    move-wide p1, v2

    :cond_0
    long-to-int p1, p1

    new-array p2, p1, [B

    :goto_0
    if-lez v1, :cond_3

    :try_start_0
    iget-object v2, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v2, Ljava/io/InputStream;

    if-le v1, p1, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v2, p2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0, p2, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sub-int/2addr v1, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance p1, Lw3/a;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lw3/a;

    const-string p1, "Decoding fixed size items is limited to INTMAX"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/util/JsonWriter;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    invoke-virtual {p0}, Landroid/util/JsonWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract i()I
.end method

.method public j()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public l(I)J
    .locals 11

    sget-object v0, Lx3/a;->a:[I

    and-int/lit8 p1, p1, 0x1f

    packed-switch p1, :pswitch_data_0

    sget-object v1, Ly3/a;->DIRECT:Ly3/a;

    goto :goto_0

    :pswitch_0
    sget-object v1, Ly3/a;->INDEFINITE:Ly3/a;

    goto :goto_0

    :pswitch_1
    sget-object v1, Ly3/a;->RESERVED:Ly3/a;

    goto :goto_0

    :pswitch_2
    sget-object v1, Ly3/a;->EIGHT_BYTES:Ly3/a;

    goto :goto_0

    :pswitch_3
    sget-object v1, Ly3/a;->FOUR_BYTES:Ly3/a;

    goto :goto_0

    :pswitch_4
    sget-object v1, Ly3/a;->TWO_BYTES:Ly3/a;

    goto :goto_0

    :pswitch_5
    sget-object v1, Ly3/a;->ONE_BYTE:Ly3/a;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    packed-switch v0, :pswitch_data_1

    new-instance p0, Lw3/a;

    const-string p1, "Reserved additional information"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    const-wide/16 p0, -0x1

    return-wide p0

    :pswitch_7
    invoke-virtual {p0, v8}, LJ8/i;->p(I)[B

    move-result-object p0

    aget-byte p1, p0, v7

    and-int/lit16 p1, p1, 0xff

    int-to-long v9, p1

    const/16 p1, 0x38

    shl-long/2addr v9, p1

    aget-byte p1, p0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    const/16 p1, 0x30

    shl-long/2addr v6, p1

    or-long/2addr v6, v9

    aget-byte p1, p0, v5

    and-int/lit16 p1, p1, 0xff

    int-to-long v9, p1

    const/16 p1, 0x28

    shl-long/2addr v9, p1

    or-long v5, v6, v9

    aget-byte p1, p0, v4

    and-int/lit16 p1, p1, 0xff

    int-to-long v9, p1

    const/16 p1, 0x20

    shl-long/2addr v9, p1

    or-long v4, v5, v9

    aget-byte p1, p0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long v2, v6, v2

    or-long/2addr v2, v4

    const/4 p1, 0x5

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    shl-long v0, v4, v1

    or-long/2addr v0, v2

    const/4 p1, 0x6

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    const/4 p1, 0x7

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0

    :pswitch_8
    invoke-virtual {p0, v3}, LJ8/i;->p(I)[B

    move-result-object p0

    aget-byte p1, p0, v7

    and-int/lit16 p1, p1, 0xff

    int-to-long v9, p1

    shl-long v2, v9, v2

    aget-byte p1, p0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long v0, v6, v1

    or-long/2addr v0, v2

    aget-byte p1, p0, v5

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0

    :pswitch_9
    invoke-virtual {p0, v5}, LJ8/i;->p(I)[B

    move-result-object p0

    aget-byte p1, p0, v7

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v8

    int-to-long v0, p1

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0

    :pswitch_a
    invoke-virtual {p0}, LJ8/i;->o()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :pswitch_b
    int-to-long p0, p1

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public m(I)Ljava/math/BigInteger;
    .locals 11

    sget-object v0, Lx3/a;->a:[I

    and-int/lit8 p1, p1, 0x1f

    packed-switch p1, :pswitch_data_0

    sget-object v1, Ly3/a;->DIRECT:Ly3/a;

    goto :goto_0

    :pswitch_0
    sget-object v1, Ly3/a;->INDEFINITE:Ly3/a;

    goto :goto_0

    :pswitch_1
    sget-object v1, Ly3/a;->RESERVED:Ly3/a;

    goto :goto_0

    :pswitch_2
    sget-object v1, Ly3/a;->EIGHT_BYTES:Ly3/a;

    goto :goto_0

    :pswitch_3
    sget-object v1, Ly3/a;->FOUR_BYTES:Ly3/a;

    goto :goto_0

    :pswitch_4
    sget-object v1, Ly3/a;->TWO_BYTES:Ly3/a;

    goto :goto_0

    :pswitch_5
    sget-object v1, Ly3/a;->ONE_BYTE:Ly3/a;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x18

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    packed-switch v0, :pswitch_data_1

    new-instance p0, Lw3/a;

    const-string p1, "Reserved additional information"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    const-wide/16 p0, -0x1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v8}, LJ8/i;->p(I)[B

    move-result-object p0

    aget-byte v0, p0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v9, 0x38

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aget-byte v0, p0, v6

    and-int/lit16 v0, v0, 0xff

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aget-byte v0, p0, v5

    and-int/lit16 v0, v0, 0xff

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aget-byte v0, p0, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x6

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x7

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, v3}, LJ8/i;->p(I)[B

    move-result-object p0

    aget-byte p1, p0, v7

    and-int/lit16 p1, p1, 0xff

    int-to-long v9, p1

    shl-long v2, v9, v2

    aget-byte p1, p0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long v0, v6, v1

    or-long/2addr v0, v2

    aget-byte p1, p0, v5

    and-int/lit16 p1, p1, 0xff

    int-to-long v2, p1

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-virtual {p0, v5}, LJ8/i;->p(I)[B

    move-result-object p0

    aget-byte p1, p0, v7

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v8

    int-to-long v0, p1

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0}, LJ8/i;->o()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_b
    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public n(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, LZ0/a;

    if-eqz v0, :cond_2

    check-cast p1, LZ0/a;

    iget-object v0, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast v0, LN/A;

    if-nez v0, :cond_0

    new-instance v0, LN/A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, LJ8/i;->c:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast v0, LN/A;

    invoke-virtual {v0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    new-instance v0, Ls/p;

    iget-object v1, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Ls/p;-><init>(Landroid/content/Context;LZ0/a;)V

    iget-object p0, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast p0, LN/A;

    invoke-virtual {p0, p1, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public o()I
    .locals 1

    :try_start_0
    iget-object p0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Lw3/a;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public p(I)[B
    .locals 5

    iget-object p0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    :try_start_0
    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "Unexpected end of stream"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    sub-int v1, p1, v1

    :goto_0
    if-lez v1, :cond_2

    sub-int v4, p1, v1

    :try_start_1
    invoke-virtual {p0, v0, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v3, :cond_1

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance p1, Lw3/a;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract q()V
.end method

.method public r()V
    .locals 3

    invoke-virtual {p0}, LJ8/i;->e()V

    invoke-virtual {p0}, LJ8/i;->f()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast v1, LA7/j;

    if-nez v1, :cond_1

    new-instance v1, LA7/j;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LA7/j;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, LJ8/i;->b:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast v1, Lm/w;

    iget-object v1, v1, Lm/w;->k:Landroid/content/Context;

    iget-object p0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast p0, LA7/j;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public y(LW3/z;)LW3/t;
    .locals 4

    new-instance v0, LX3/d;

    iget-object v1, p0, LJ8/i;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    const-class v2, Ljava/io/File;

    invoke-virtual {p1, v2, v1}, LW3/z;->a(Ljava/lang/Class;Ljava/lang/Class;)LW3/t;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v3, v1}, LW3/z;->a(Ljava/lang/Class;Ljava/lang/Class;)LW3/t;

    move-result-object p1

    iget-object p0, p0, LJ8/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v1}, LX3/d;-><init>(Landroid/content/Context;LW3/t;LW3/t;Ljava/lang/Class;)V

    return-object v0
.end method
