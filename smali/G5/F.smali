.class public abstract LG5/F;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/h;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/b;->b:LT3/a;

    iget-object v2, v0, Lcom/bumptech/glide/b;->d:Lcom/bumptech/glide/e;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v2, v2, Lcom/bumptech/glide/e;->h:LJ7/c;

    new-instance v4, Lcom/bumptech/glide/h;

    invoke-direct {v4}, Lcom/bumptech/glide/h;-><init>()V

    new-instance v5, LZ3/m;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v4, Lcom/bumptech/glide/h;->g:LQ/I;

    monitor-enter v6

    :try_start_0
    iget-object v7, v6, LQ/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v6

    new-instance v5, LZ3/u;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v7, v4, Lcom/bumptech/glide/h;->g:LQ/I;

    monitor-enter v7

    :try_start_1
    iget-object v6, v7, LQ/I;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Lcom/bumptech/glide/h;->e()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ld4/a;

    iget-object v0, v0, Lcom/bumptech/glide/b;->e:LT3/f;

    invoke-direct {v7, v3, v6, v1, v0}, Ld4/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LT3/a;LT3/f;)V

    new-instance v8, LZ3/I;

    new-instance v9, Lz7/d;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct {v8, v1, v9}, LZ3/I;-><init>(LT3/a;LZ3/H;)V

    new-instance v9, LZ3/q;

    invoke-virtual {v4}, Lcom/bumptech/glide/h;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-direct {v9, v10, v11, v1, v0}, LZ3/q;-><init>(Ljava/util/ArrayList;Landroid/util/DisplayMetrics;LT3/a;LT3/f;)V

    iget-object v2, v2, LJ7/c;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    const-class v10, Lcom/bumptech/glide/c;

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, LZ3/g;

    const/4 v10, 0x1

    invoke-direct {v2, v10}, LZ3/g;-><init>(I)V

    new-instance v10, LZ3/g;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, LZ3/g;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v10, LZ3/f;

    const/4 v2, 0x0

    invoke-direct {v10, v9, v2}, LZ3/f;-><init>(LZ3/q;I)V

    new-instance v2, LZ3/a;

    const/4 v11, 0x2

    invoke-direct {v2, v11, v9, v0}, LZ3/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    new-instance v11, Lb4/a;

    new-instance v12, Lt9/c;

    const/16 v13, 0x8

    invoke-direct {v12, v13, v6, v0}, Lt9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lb4/a;-><init>(Lt9/c;I)V

    const-string v12, "Animation"

    const-class v13, Ljava/io/InputStream;

    const-class v14, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v12, v13, v14, v11}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v11, Lb4/a;

    new-instance v15, Lt9/c;

    move-object/from16 v16, v7

    const/16 v7, 0x8

    invoke-direct {v15, v7, v6, v0}, Lt9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    invoke-direct {v11, v15, v7}, Lb4/a;-><init>(Lt9/c;I)V

    const-class v7, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v12, v7, v14, v11}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v11, Lb4/c;

    invoke-direct {v11, v3}, Lb4/c;-><init>(Landroid/content/Context;)V

    new-instance v15, LZ3/b;

    invoke-direct {v15, v0}, LZ3/b;-><init>(LT3/f;)V

    move-object/from16 p0, v11

    new-instance v11, LMd/c;

    move-object/from16 v17, v14

    const/4 v14, 0x2

    invoke-direct {v11, v14}, LMd/c;-><init>(I)V

    new-instance v14, Le4/c;

    move-object/from16 v18, v11

    const/4 v11, 0x1

    invoke-direct {v14, v11}, Le4/c;-><init>(I)V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v19, v14

    new-instance v14, LW3/C;

    move-object/from16 v20, v11

    const/4 v11, 0x5

    invoke-direct {v14, v11}, LW3/C;-><init>(I)V

    invoke-virtual {v4, v7, v14}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;LQ3/d;)V

    new-instance v11, LX4/i;

    const/16 v14, 0xa

    invoke-direct {v11, v14, v0}, LX4/i;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v13, v11}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;LQ3/d;)V

    const-string v11, "Bitmap"

    const-class v14, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v11, v7, v14, v10}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    invoke-virtual {v4, v11, v13, v14, v2}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    move-object/from16 v21, v3

    const-string v3, "robolectric"

    move-object/from16 v22, v12

    sget-object v12, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v23, v12

    const-class v12, Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_1

    new-instance v3, LZ3/f;

    move-object/from16 v24, v0

    const/4 v0, 0x1

    invoke-direct {v3, v9, v0}, LZ3/f;-><init>(LZ3/q;I)V

    invoke-virtual {v4, v11, v12, v14, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    goto :goto_1

    :cond_1
    move-object/from16 v24, v0

    :goto_1
    invoke-virtual {v4, v11, v12, v14, v8}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v0, LZ3/I;

    new-instance v3, LO7/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v3}, LZ3/I;-><init>(LT3/a;LZ3/H;)V

    const-class v3, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4, v11, v3, v14, v0}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    sget-object v0, LW3/C;->b:LW3/C;

    invoke-virtual {v4, v14, v14, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v9, LZ3/E;

    move-object/from16 v25, v3

    const/4 v3, 0x0

    invoke-direct {v9, v3}, LZ3/E;-><init>(I)V

    invoke-virtual {v4, v11, v14, v14, v9}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    invoke-virtual {v4, v14, v15}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;LQ3/n;)V

    new-instance v3, LZ3/a;

    invoke-direct {v3, v5, v10}, LZ3/a;-><init>(Landroid/content/res/Resources;LQ3/m;)V

    const-string v9, "BitmapDrawable"

    const-class v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, v9, v7, v10, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v3, LZ3/a;

    invoke-direct {v3, v5, v2}, LZ3/a;-><init>(Landroid/content/res/Resources;LQ3/m;)V

    invoke-virtual {v4, v9, v13, v10, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v2, LZ3/a;

    invoke-direct {v2, v5, v8}, LZ3/a;-><init>(Landroid/content/res/Resources;LQ3/m;)V

    invoke-virtual {v4, v9, v12, v10, v2}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v2, Lo3/e;

    invoke-direct {v2, v1, v15}, Lo3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v10, v2}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;LQ3/n;)V

    new-instance v2, Ld4/h;

    move-object/from16 v3, v16

    move-object/from16 v8, v24

    invoke-direct {v2, v6, v3, v8}, Ld4/h;-><init>(Ljava/util/ArrayList;Ld4/a;LT3/f;)V

    const-class v6, Ld4/b;

    move-object/from16 v9, v22

    invoke-virtual {v4, v9, v13, v6, v2}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    invoke-virtual {v4, v9, v7, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v2, LO7/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4, v6, v2}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;LQ3/n;)V

    const-class v2, LP3/d;

    invoke-virtual {v4, v2, v2, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v3, LZ3/c;

    invoke-direct {v3, v1}, LZ3/c;-><init>(LT3/a;)V

    invoke-virtual {v4, v11, v2, v14, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    const-string v2, "legacy_append"

    const-class v3, Landroid/net/Uri;

    move-object/from16 v11, p0

    move-object/from16 v9, v17

    invoke-virtual {v4, v2, v3, v9, v11}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v15, LZ3/a;

    move-object/from16 p0, v6

    const/4 v6, 0x1

    invoke-direct {v15, v6, v11, v1}, LZ3/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v3, v14, v15}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v6, La4/a;

    const/4 v11, 0x0

    invoke-direct {v6, v11}, La4/a;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/bumptech/glide/h;->h(Lcom/bumptech/glide/load/data/f;)V

    new-instance v6, LW3/C;

    const/4 v11, 0x6

    invoke-direct {v6, v11}, LW3/C;-><init>(I)V

    const-class v11, Ljava/io/File;

    invoke-virtual {v4, v11, v7, v6}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v6, LW3/i;

    new-instance v15, LW3/C;

    move-object/from16 v16, v1

    const/16 v1, 0x9

    invoke-direct {v15, v1}, LW3/C;-><init>(I)V

    const/4 v1, 0x6

    invoke-direct {v6, v1, v15}, LF3/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v11, v13, v6}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, LZ3/E;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, LZ3/E;-><init>(I)V

    invoke-virtual {v4, v2, v11, v11, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v1, LW3/i;

    new-instance v6, LW3/C;

    const/16 v15, 0x8

    invoke-direct {v6, v15}, LW3/C;-><init>(I)V

    const/4 v15, 0x6

    invoke-direct {v1, v15, v6}, LF3/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v11, v12, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v11, v11, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, Lcom/bumptech/glide/load/data/l;

    invoke-direct {v1, v8}, Lcom/bumptech/glide/load/data/l;-><init>(LT3/f;)V

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/h;->h(Lcom/bumptech/glide/load/data/f;)V

    const-string v1, "robolectric"

    move-object/from16 v6, v23

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, La4/a;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, La4/a;-><init>(I)V

    invoke-virtual {v4, v1}, Lcom/bumptech/glide/h;->h(Lcom/bumptech/glide/load/data/f;)V

    :cond_2
    new-instance v1, LW3/f;

    move-object/from16 v6, v21

    invoke-direct {v1, v6}, LW3/f;-><init>(Landroid/content/Context;)V

    new-instance v8, LH4/l;

    const/4 v15, 0x1

    invoke-direct {v8, v6, v15}, LH4/l;-><init>(Landroid/content/Context;I)V

    new-instance v15, LW3/e;

    move-object/from16 v17, v10

    const/4 v10, 0x0

    invoke-direct {v15, v6, v10}, LW3/e;-><init>(Landroid/content/Context;I)V

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v10, v13, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    move-object/from16 v21, v14

    const-class v14, Ljava/lang/Integer;

    invoke-virtual {v4, v14, v13, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    move-object/from16 v1, v25

    invoke-virtual {v4, v10, v1, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v14, v1, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v10, v9, v15}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v14, v9, v15}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v8, LW3/e;

    const/4 v15, 0x1

    invoke-direct {v8, v6, v15}, LW3/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3, v13, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v8, LH4/l;

    const/4 v15, 0x2

    invoke-direct {v8, v6, v15}, LH4/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3, v1, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v8, LW3/A;

    invoke-direct {v8, v5}, LW3/A;-><init>(Landroid/content/res/Resources;)V

    new-instance v15, LI3/c;

    move-object/from16 v22, v2

    const/16 v2, 0xb

    invoke-direct {v15, v2, v5}, LI3/c;-><init>(ILjava/lang/Object;)V

    new-instance v2, LI3/d;

    move-object/from16 v23, v9

    const/16 v9, 0xa

    invoke-direct {v2, v9, v5}, LI3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v14, v3, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v10, v3, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v14, v1, v15}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v10, v1, v15}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v14, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v10, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LJ7/c;

    const/16 v8, 0x9

    invoke-direct {v2, v8}, LJ7/c;-><init>(I)V

    const-class v8, Ljava/lang/String;

    invoke-virtual {v4, v8, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LJ7/c;

    const/16 v9, 0x9

    invoke-direct {v2, v9}, LJ7/c;-><init>(I)V

    invoke-virtual {v4, v3, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LW3/C;

    const/16 v9, 0xd

    invoke-direct {v2, v9}, LW3/C;-><init>(I)V

    invoke-virtual {v4, v8, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LW3/C;

    const/16 v9, 0xc

    invoke-direct {v2, v9}, LW3/C;-><init>(I)V

    invoke-virtual {v4, v8, v12, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LW3/C;

    const/16 v9, 0xb

    invoke-direct {v2, v9}, LW3/C;-><init>(I)V

    invoke-virtual {v4, v8, v1, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LI3/d;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/16 v9, 0x9

    invoke-direct {v2, v9, v8}, LI3/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LI3/c;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const/16 v9, 0xa

    invoke-direct {v2, v9, v8}, LI3/c;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3, v1, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LH4/l;

    const/4 v8, 0x3

    invoke-direct {v2, v6, v8}, LH4/l;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LW3/e;

    const/4 v8, 0x2

    invoke-direct {v2, v6, v8}, LW3/e;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LX3/b;

    invoke-direct {v2, v6, v13}, LJ8/i;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v3, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LX3/b;

    invoke-direct {v2, v6, v12}, LJ8/i;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v3, v12, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LG5/J2;

    move-object/from16 v8, v20

    invoke-direct {v2, v8}, LG5/J2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v13, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, Lo3/f;

    const/16 v9, 0xc

    invoke-direct {v2, v9, v8}, Lo3/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v3, v12, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v2, LB3/c;

    invoke-direct {v2, v8}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v1, v2}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, LW3/C;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, LW3/C;-><init>(I)V

    invoke-virtual {v4, v3, v13, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, LE5/v;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, LE5/v;-><init>(I)V

    const-class v2, Ljava/net/URL;

    invoke-virtual {v4, v2, v13, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, La5/g;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, La5/g;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v4, v3, v11, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, LJ7/c;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LJ7/c;-><init>(I)V

    const-class v2, LW3/j;

    invoke-virtual {v4, v2, v13, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, LW3/C;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LW3/C;-><init>(I)V

    const-class v2, [B

    invoke-virtual {v4, v2, v7, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v1, LW3/C;

    const/4 v6, 0x4

    invoke-direct {v1, v6}, LW3/C;-><init>(I)V

    invoke-virtual {v4, v2, v13, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    invoke-virtual {v4, v3, v3, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    move-object/from16 v1, v23

    invoke-virtual {v4, v1, v1, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;LW3/u;)V

    new-instance v0, LZ3/E;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, LZ3/E;-><init>(I)V

    move-object/from16 v3, v22

    invoke-virtual {v4, v3, v1, v1, v0}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v0, LW3/A;

    invoke-direct {v0, v5}, LW3/A;-><init>(Landroid/content/res/Resources;)V

    move-object/from16 v6, v17

    move-object/from16 v3, v21

    invoke-virtual {v4, v3, v6, v0}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Le4/a;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v2, v0}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Le4/a;)V

    new-instance v7, LZ3/x;

    const/16 v8, 0xb

    move-object/from16 v9, v16

    move-object/from16 v10, v19

    invoke-direct {v7, v9, v8, v0, v10}, LZ3/x;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v2, v7}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Le4/a;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v2, v10}, Lcom/bumptech/glide/h;->i(Ljava/lang/Class;Ljava/lang/Class;Le4/a;)V

    new-instance v0, LZ3/I;

    new-instance v1, LR7/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v9, v1}, LZ3/I;-><init>(LT3/a;LZ3/H;)V

    const-class v1, Ljava/nio/ByteBuffer;

    const-string v2, "legacy_append"

    invoke-virtual {v4, v2, v1, v3, v0}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    new-instance v1, LZ3/a;

    invoke-direct {v1, v5, v0}, LZ3/a;-><init>(Landroid/content/res/Resources;LQ3/m;)V

    const-class v0, Ljava/nio/ByteBuffer;

    const-string v2, "legacy_append"

    invoke-virtual {v4, v2, v0, v6, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;LQ3/m;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v4

    :cond_3
    invoke-static {v0}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static final b(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrc/o;

    invoke-interface {v1}, Lrc/o;->e()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1, v0}, Lfb/t;->q(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static c(Landroid/net/Uri;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
