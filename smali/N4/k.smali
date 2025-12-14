.class public final LN4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LI4/f;

.field public final c:LO4/d;

.field public final d:LN4/d;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:LP4/c;

.field public final g:LQ4/a;

.field public final h:LQ4/a;

.field public final i:LO4/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;LI4/f;LO4/d;LN4/d;Ljava/util/concurrent/Executor;LP4/c;LQ4/a;LQ4/a;LO4/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN4/k;->a:Landroid/content/Context;

    iput-object p2, p0, LN4/k;->b:LI4/f;

    iput-object p3, p0, LN4/k;->c:LO4/d;

    iput-object p4, p0, LN4/k;->d:LN4/d;

    iput-object p5, p0, LN4/k;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, LN4/k;->f:LP4/c;

    iput-object p7, p0, LN4/k;->g:LQ4/a;

    iput-object p8, p0, LN4/k;->h:LQ4/a;

    iput-object p9, p0, LN4/k;->i:LO4/c;

    return-void
.end method


# virtual methods
.method public final a(LH4/k;I)V
    .locals 44

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, LN4/k;->b:LI4/f;

    iget-object v1, v9, LH4/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LI4/f;->a(Ljava/lang/String;)LI4/g;

    move-result-object v1

    sget-object v0, LI4/c;->OK:LI4/c;

    if-eqz v0, :cond_22

    const-wide/16 v4, 0x0

    :goto_0
    new-instance v0, LN4/h;

    const/4 v6, 0x0

    invoke-direct {v0, v8, v9, v6}, LN4/h;-><init>(LN4/k;LH4/k;I)V

    iget-object v6, v8, LN4/k;->f:LP4/c;

    move-object v10, v6

    check-cast v10, LO4/h;

    invoke-virtual {v10, v0}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, LN4/h;

    const/4 v6, 0x1

    invoke-direct {v0, v8, v9, v6}, LN4/h;-><init>(LN4/k;LH4/k;I)V

    invoke-virtual {v10, v0}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v12, -0x1

    iget-object v7, v9, LH4/k;->b:[B

    if-nez v1, :cond_1

    const-string v0, "Uploader"

    const-string v14, "Unknown backend for %s, deleting event batch for it..."

    invoke-static {v9, v0, v14}, Landroidx/activity/t;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LI4/a;

    sget-object v14, LI4/c;->FATAL_ERROR:LI4/c;

    invoke-direct {v0, v14, v12, v13}, LI4/a;-><init>(LI4/c;J)V

    move-object/from16 v30, v1

    goto/16 :goto_10

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LO4/b;

    iget-object v15, v15, LO4/b;->c:LH4/i;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_3

    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    :goto_2
    const-string v2, "proto"

    if-eqz v15, :cond_4

    iget-object v3, v8, LN4/k;->i:LO4/c;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, LAa/a;

    const/16 v11, 0x8

    invoke-direct {v15, v11, v3}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v15}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK4/a;

    new-instance v11, LH4/h;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    iput-object v15, v11, LH4/h;->f:Ljava/util/HashMap;

    iget-object v15, v8, LN4/k;->g:LQ4/a;

    invoke-interface {v15}, LQ4/a;->b()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v11, LH4/h;->d:Ljava/lang/Long;

    iget-object v15, v8, LN4/k;->h:LQ4/a;

    invoke-interface {v15}, LQ4/a;->b()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    iput-object v15, v11, LH4/h;->e:Ljava/lang/Long;

    const-string v15, "GDT_CLIENT_METRICS"

    iput-object v15, v11, LH4/h;->a:Ljava/lang/String;

    new-instance v15, LH4/n;

    new-instance v12, LE4/b;

    invoke-direct {v12, v2}, LE4/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, LH4/q;->a:LZ3/x;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {v13, v3, v14}, LZ3/x;->q(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v15, v12, v3}, LH4/n;-><init>(LE4/b;[B)V

    iput-object v15, v11, LH4/h;->c:LH4/n;

    invoke-virtual {v11}, LH4/h;->b()LH4/i;

    move-result-object v3

    move-object v11, v1

    check-cast v11, LF4/d;

    invoke-virtual {v11, v3}, LF4/d;->a(LH4/i;)LH4/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v3, v1

    check-cast v3, LF4/d;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LH4/i;

    iget-object v13, v12, LH4/i;->a:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-string v15, "CctTransportBackend"

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    check-cast v13, Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LH4/i;

    sget-object v29, LG4/y;->DEFAULT:LG4/y;

    iget-object v14, v3, LF4/d;->f:LQ4/a;

    invoke-interface {v14}, LQ4/a;->b()J

    move-result-wide v21

    iget-object v14, v3, LF4/d;->e:LQ4/a;

    invoke-interface {v14}, LQ4/a;->b()J

    move-result-wide v23

    sget-object v14, LG4/q;->ANDROID_FIREBASE:LG4/q;

    move-object/from16 v30, v1

    const-string v1, "sdk-version"

    invoke-virtual {v13, v1}, LH4/i;->b(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    const-string v1, "model"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v1, "hardware"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v1, "device"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v1, "product"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string v1, "os-uild"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v1, "manufacturer"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v1, "fingerprint"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    const-string v1, "country"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string v1, "locale"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v1, "mcc_mnc"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v1, "application_build"

    invoke-virtual {v13, v1}, LH4/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    new-instance v1, LG4/h;

    move-object/from16 v31, v1

    invoke-direct/range {v31 .. v43}, LG4/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, LG4/j;

    invoke-direct {v13, v14, v1}, LG4/j;-><init>(LG4/q;LG4/h;)V

    :try_start_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v26, v1

    const/16 v27, 0x0

    goto :goto_5

    :catch_1
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v27, v1

    const/16 v26, 0x0

    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LH4/i;

    move-object/from16 v31, v11

    iget-object v11, v14, LH4/i;->c:LH4/n;

    move-object/from16 v19, v12

    iget-object v12, v11, LH4/n;->a:LE4/b;

    new-instance v9, LE4/b;

    invoke-direct {v9, v2}, LE4/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, LE4/b;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v11, v11, LH4/n;->b:[B

    if-eqz v9, :cond_7

    new-instance v9, LG4/k;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v11, v9, LG4/k;->d:[B

    move-object/from16 v32, v2

    goto :goto_7

    :cond_7
    new-instance v9, LE4/b;

    move-object/from16 v32, v2

    const-string v2, "json"

    invoke-direct {v9, v2}, LE4/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, LE4/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v2, v11, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v9, LG4/k;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v2, v9, LG4/k;->e:Ljava/lang/String;

    :goto_7
    iget-wide v11, v14, LH4/i;->d:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, LG4/k;->a:Ljava/lang/Long;

    iget-wide v11, v14, LH4/i;->e:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, LG4/k;->c:Ljava/lang/Long;

    iget-object v2, v14, LH4/i;->f:Ljava/util/HashMap;

    const-string v11, "tz-offset"

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    const-wide/16 v11, 0x0

    goto :goto_8

    :cond_8
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :goto_8
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v9, LG4/k;->f:Ljava/lang/Long;

    const-string v2, "net-type"

    invoke-virtual {v14, v2}, LH4/i;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, LG4/w;->a(I)LG4/w;

    move-result-object v2

    const-string v11, "mobile-subtype"

    invoke-virtual {v14, v11}, LH4/i;->b(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, LG4/v;->a(I)LG4/v;

    move-result-object v11

    new-instance v12, LG4/o;

    invoke-direct {v12, v2, v11}, LG4/o;-><init>(LG4/w;LG4/v;)V

    iput-object v12, v9, LG4/k;->g:LG4/o;

    iget-object v2, v14, LH4/i;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iput-object v2, v9, LG4/k;->b:Ljava/lang/Integer;

    :cond_9
    iget-object v2, v9, LG4/k;->a:Ljava/lang/Long;

    if-nez v2, :cond_a

    const-string v2, " eventTimeMs"

    goto :goto_9

    :cond_a
    const-string v2, ""

    :goto_9
    iget-object v11, v9, LG4/k;->c:Ljava/lang/Long;

    if-nez v11, :cond_b

    const-string v11, " eventUptimeMs"

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_b
    iget-object v11, v9, LG4/k;->f:Ljava/lang/Long;

    if-nez v11, :cond_c

    const-string v11, " timezoneOffsetSeconds"

    invoke-static {v2, v11}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v2, LG4/l;

    iget-object v11, v9, LG4/k;->a:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    iget-object v11, v9, LG4/k;->b:Ljava/lang/Integer;

    iget-object v12, v9, LG4/k;->c:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    iget-object v12, v9, LG4/k;->d:[B

    iget-object v14, v9, LG4/k;->e:Ljava/lang/String;

    iget-object v8, v9, LG4/k;->f:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    iget-object v8, v9, LG4/k;->g:LG4/o;

    move-object/from16 v33, v2

    move-object/from16 v36, v11

    move-object/from16 v39, v12

    move-object/from16 v40, v14

    move-object/from16 v43, v8

    invoke-direct/range {v33 .. v43}, LG4/l;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLG4/o;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_a
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v12, v19

    move-object/from16 v11, v31

    move-object/from16 v2, v32

    goto/16 :goto_6

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const-string v2, "TRuntime."

    invoke-virtual {v2, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Received event of unsupported encoding "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ". Skipping..."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    move-object/from16 v32, v2

    move-object/from16 v31, v11

    new-instance v2, LG4/m;

    move-object/from16 v20, v2

    move-object/from16 v25, v13

    move-object/from16 v28, v1

    invoke-direct/range {v20 .. v29}, LG4/m;-><init>(JJLG4/j;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;LG4/y;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v1, v30

    move-object/from16 v11, v31

    move-object/from16 v2, v32

    goto/16 :goto_4

    :cond_11
    move-object/from16 v30, v1

    const/4 v8, 0x5

    new-instance v1, LG4/i;

    invoke-direct {v1, v0}, LG4/i;-><init>(Ljava/util/ArrayList;)V

    iget-object v0, v3, LF4/d;->d:Ljava/net/URL;

    if-eqz v7, :cond_13

    :try_start_2
    invoke-static {v7}, LF4/a;->a([B)LF4/a;

    move-result-object v2

    iget-object v9, v2, LF4/a;->b:Ljava/lang/String;

    if-eqz v9, :cond_12

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    :goto_b
    iget-object v2, v2, LF4/a;->a:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-static {v2}, LF4/d;->b(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_c

    :catch_2
    new-instance v0, LI4/a;

    sget-object v1, LI4/c;->FATAL_ERROR:LI4/c;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LI4/a;-><init>(LI4/c;J)V

    goto/16 :goto_10

    :cond_13
    const/4 v9, 0x0

    :cond_14
    :goto_c
    :try_start_3
    new-instance v2, LF4/b;

    invoke-direct {v2, v0, v1, v9}, LF4/b;-><init>(Ljava/net/URL;LG4/i;Ljava/lang/String;)V

    new-instance v0, LAa/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3}, LAa/a;-><init>(ILjava/lang/Object;)V

    move v14, v8

    :cond_15
    invoke-virtual {v0, v2}, LAa/a;->b(Ljava/lang/Object;)LF4/c;

    move-result-object v1

    iget-object v3, v1, LF4/c;->c:Ljava/lang/Object;

    check-cast v3, Ljava/net/URL;

    if-eqz v3, :cond_16

    const-string v8, "Following redirect to: %s"

    invoke-static {v3, v15, v8}, Landroidx/activity/t;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, LF4/b;

    iget-object v9, v2, LF4/b;->b:LG4/i;

    iget-object v2, v2, LF4/b;->c:Ljava/lang/String;

    invoke-direct {v8, v3, v9, v2}, LF4/b;-><init>(Ljava/net/URL;LG4/i;Ljava/lang/String;)V

    move-object v2, v8

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_d
    if-eqz v2, :cond_17

    add-int/lit8 v14, v14, -0x1

    const/4 v3, 0x1

    if-ge v14, v3, :cond_15

    :cond_17
    iget v0, v1, LF4/c;->b:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_18

    iget-wide v0, v1, LF4/c;->a:J

    new-instance v2, LI4/a;

    sget-object v3, LI4/c;->OK:LI4/c;

    invoke-direct {v2, v3, v0, v1}, LI4/a;-><init>(LI4/c;J)V

    move-object v0, v2

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    :cond_18
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1b

    const/16 v1, 0x194

    if-ne v0, v1, :cond_19

    goto :goto_e

    :cond_19
    const/16 v1, 0x190

    if-ne v0, v1, :cond_1a

    new-instance v0, LI4/a;

    sget-object v1, LI4/c;->INVALID_PAYLOAD:LI4/c;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LI4/a;-><init>(LI4/c;J)V

    goto :goto_10

    :cond_1a
    new-instance v0, LI4/a;

    sget-object v1, LI4/c;->FATAL_ERROR:LI4/c;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LI4/a;-><init>(LI4/c;J)V

    goto :goto_10

    :cond_1b
    :goto_e
    new-instance v0, LI4/a;

    sget-object v1, LI4/c;->TRANSIENT_ERROR:LI4/c;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LI4/a;-><init>(LI4/c;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_10

    :goto_f
    const-string v1, "Could not make request to the backend"

    invoke-static {v0, v15, v1}, Landroidx/activity/t;->c(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, LI4/a;

    sget-object v1, LI4/c;->TRANSIENT_ERROR:LI4/c;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, LI4/a;-><init>(LI4/c;J)V

    :goto_10
    sget-object v1, LI4/c;->TRANSIENT_ERROR:LI4/c;

    iget-object v2, v0, LI4/a;->a:LI4/c;

    if-ne v2, v1, :cond_1c

    new-instance v0, LN4/i;

    const/4 v7, 0x0

    move-object v1, v0

    move-wide v2, v4

    move-object/from16 v4, p0

    move v5, v7

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, LN4/i;-><init>(JLjava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    const/4 v1, 0x1

    add-int/lit8 v0, p2, 0x1

    move-object/from16 v3, p0

    iget-object v2, v3, LN4/k;->d:LN4/d;

    move-object/from16 v8, p1

    invoke-virtual {v2, v8, v0, v1}, LN4/d;->a(LH4/k;IZ)V

    return-void

    :cond_1c
    move-object/from16 v3, p0

    move-object/from16 v8, p1

    new-instance v1, LHa/a;

    const/4 v9, 0x3

    invoke-direct {v1, v9, v3, v6}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    sget-object v1, LI4/c;->OK:LI4/c;

    if-ne v2, v1, :cond_1d

    iget-wide v0, v0, LI4/a;->b:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    if-eqz v7, :cond_20

    new-instance v0, LAa/a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v3}, LAa/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v0}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    goto :goto_12

    :cond_1d
    sget-object v0, LI4/c;->INVALID_PAYLOAD:LI4/c;

    if-ne v2, v0, :cond_20

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO4/b;

    iget-object v2, v2, LO4/b;->c:LH4/i;

    iget-object v2, v2, LH4/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1e
    const/4 v6, 0x1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_1f
    new-instance v1, LHa/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v3, v0}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    :cond_20
    :goto_12
    move-object v9, v8

    move-object/from16 v1, v30

    move-object v8, v3

    goto/16 :goto_0

    :cond_21
    move-object v3, v8

    move-object v8, v9

    new-instance v0, LN4/j;

    invoke-direct {v0, v4, v5, v3, v8}, LN4/j;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    return-void

    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null status"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
