.class public final LZ3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/m;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LZ3/a;->a:I

    iput-object p2, p0, LZ3/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LZ3/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;LQ3/m;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LZ3/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LZ3/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LQ3/k;)Z
    .locals 1

    iget v0, p0, LZ3/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    const/4 p0, 0x1

    return p0

    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    const-string p0, "android.resource"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, LZ3/a;->b:Ljava/lang/Object;

    check-cast p0, LQ3/m;

    invoke-interface {p0, p1, p2}, LQ3/m;->a(Ljava/lang/Object;LQ3/k;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILQ3/k;)LS3/C;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, LZ3/a;->a:I

    packed-switch v5, :pswitch_data_0

    check-cast v1, Ljava/io/InputStream;

    instance-of v5, v1, LZ3/z;

    if-eqz v5, :cond_0

    check-cast v1, LZ3/z;

    const/4 v5, 0x0

    move-object v6, v1

    move v7, v5

    goto :goto_0

    :cond_0
    new-instance v5, LZ3/z;

    iget-object v6, v0, LZ3/a;->c:Ljava/lang/Object;

    check-cast v6, LT3/f;

    invoke-direct {v5, v1, v6}, LZ3/z;-><init>(Ljava/io/InputStream;LT3/f;)V

    const/4 v1, 0x1

    move v7, v1

    move-object v6, v5

    :goto_0
    sget-object v8, Ll4/e;->c:Ljava/util/ArrayDeque;

    monitor-enter v8

    :try_start_0
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll4/e;

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    new-instance v1, Ll4/e;

    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    :cond_1
    move-object v9, v1

    iput-object v6, v9, Ll4/e;->a:LZ3/z;

    new-instance v1, Lic/a;

    invoke-direct {v1, v9}, Lic/a;-><init>(Ll4/e;)V

    new-instance v5, Lo3/l;

    invoke-direct {v5, v6, v9}, Lo3/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    :try_start_1
    iget-object v0, v0, LZ3/a;->b:Ljava/lang/Object;

    check-cast v0, LZ3/q;

    new-instance v11, Lo3/t;

    iget-object v12, v0, LZ3/q;->d:Ljava/util/ArrayList;

    iget-object v13, v0, LZ3/q;->c:LT3/f;

    invoke-direct {v11, v1, v12, v13}, Lo3/t;-><init>(Lic/a;Ljava/util/ArrayList;LT3/f;)V

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, LZ3/q;->a(LZ3/y;IILQ3/k;LZ3/p;)LZ3/d;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v10, v9, Ll4/e;->b:Ljava/io/IOException;

    iput-object v10, v9, Ll4/e;->a:LZ3/z;

    monitor-enter v8

    :try_start_2
    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-virtual {v6}, LZ3/z;->b()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    iput-object v10, v9, Ll4/e;->b:Ljava/io/IOException;

    iput-object v10, v9, Ll4/e;->a:LZ3/z;

    sget-object v1, Ll4/e;->c:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_4
    invoke-virtual {v1, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v7, :cond_3

    invoke-virtual {v6}, LZ3/z;->b()V

    :cond_3
    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_0
    check-cast v1, Landroid/net/Uri;

    iget-object v5, v0, LZ3/a;->b:Ljava/lang/Object;

    check-cast v5, Lb4/c;

    invoke-virtual {v5, v1, v4}, Lb4/c;->c(Landroid/net/Uri;LQ3/k;)LS3/C;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    check-cast v1, Lb4/b;

    invoke-virtual {v1}, Lb4/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, LZ3/a;->c:Ljava/lang/Object;

    check-cast v0, LT3/a;

    invoke-static {v0, v1, v2, v3}, LZ3/s;->a(LT3/a;Landroid/graphics/drawable/Drawable;II)LZ3/d;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    iget-object v5, v0, LZ3/a;->b:Ljava/lang/Object;

    check-cast v5, LQ3/m;

    invoke-interface {v5, p1, v2, v3, v4}, LQ3/m;->b(Ljava/lang/Object;IILQ3/k;)LS3/C;

    move-result-object v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    new-instance v2, LZ3/d;

    iget-object v0, v0, LZ3/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v1}, LZ3/d;-><init>(Landroid/content/res/Resources;LS3/C;)V

    move-object v0, v2

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
