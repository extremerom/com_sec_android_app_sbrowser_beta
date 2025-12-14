.class public Lcom/google/firebase/messaging/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/b;
.implements Lk7/e;


# static fields
.field public static e:Lcom/google/firebase/messaging/q;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lu5/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "InstanceID/Store"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, LN/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LN/A;-><init>(I)V

    iput-object v2, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    const-string v2, "com.google.android.gms.appid"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "com.google.android.gms.appid-no-backup"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "App restored, clearing state"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p0}, LH/B;->a(Landroid/content/Context;Lcom/google/firebase/messaging/q;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "Error creating file in no backup dir: "

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Typeface;Ls1/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    new-instance p1, Landroidx/emoji2/text/o;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Landroidx/emoji2/text/o;-><init>(I)V

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    const/4 p1, 0x6

    invoke-virtual {p2, p1}, Lf1/L;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p2, Lf1/L;->a:I

    add-int/2addr v0, v2

    iget-object v2, p2, Lf1/L;->d:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p2, Lf1/L;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lf1/L;->b(I)I

    move-result p1

    if-eqz p1, :cond_1

    iget v0, p2, Lf1/L;->a:I

    add-int/2addr p1, v0

    iget-object v0, p2, Lf1/L;->d:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p2, Lf1/L;->d:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_4

    new-instance v0, Landroidx/emoji2/text/r;

    invoke-direct {v0, p0, p2}, Landroidx/emoji2/text/r;-><init>(Lcom/google/firebase/messaging/q;I)V

    invoke-virtual {v0}, Landroidx/emoji2/text/r;->c()Ls1/a;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lf1/L;->b(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, v2, Lf1/L;->d:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v2, v2, Lf1/L;->a:I

    add-int/2addr v3, v2

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    goto :goto_3

    :cond_2
    move v2, v1

    :goto_3
    mul-int/lit8 v3, p2, 0x2

    iget-object v4, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v4, [C

    invoke-static {v2, v4, v3}, Ljava/lang/Character;->toChars(I[CI)I

    invoke-virtual {v0}, Landroidx/emoji2/text/r;->b()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_4

    :cond_3
    move v2, v1

    :goto_4
    const-string v4, "invalid metadata codepoint length"

    invoke-static {v4, v2}, LG6/a;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/emoji2/text/r;->b()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/emoji2/text/o;

    invoke-virtual {v3, v0, v1, v2}, Landroidx/emoji2/text/o;->a(Landroidx/emoji2/text/r;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo3/c;Lac/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lxc/o;LJb/C;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    new-instance p2, LJb/E;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, LJb/E;-><init>(Lcom/google/firebase/messaging/q;I)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    new-instance p2, LJb/E;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, LJb/E;-><init>(Lcom/google/firebase/messaging/q;I)V

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized e()Lcom/google/firebase/messaging/q;
    .locals 3

    const-class v0, Lcom/google/firebase/messaging/q;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/firebase/messaging/q;->e:Lcom/google/firebase/messaging/q;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/firebase/messaging/q;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    iput-object v2, v1, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    sput-object v1, Lcom/google/firebase/messaging/q;->e:Lcom/google/firebase/messaging/q;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/firebase/messaging/q;->e:Lcom/google/firebase/messaging/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|T|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|T-timestamp|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|S|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lk7/r;)V
    .locals 5

    iget-object v0, p1, Lk7/f;->b:Lk7/p;

    invoke-static {p1}, Lg7/s;->a(Lk7/f;)Lg7/i;

    move-result-object v1

    iget-object v2, p1, Lk7/f;->a:Lk7/n;

    iget v2, v2, Lk7/n;->e:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/firebase/messaging/q;->f()Lk7/k;

    move-result-object v2

    iget-boolean v3, v1, Lg7/i;->e:Z

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v3, Lg7/e;

    invoke-virtual {p0, v3}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    new-instance v3, Lg7/u;

    invoke-static {p1, v2}, Lg7/t;->c(Lk7/f;Lk7/k;)Lk7/l;

    move-result-object p1

    invoke-direct {v3, v1, v0, p1}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    invoke-virtual {p0, v3}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insn with result/move-result-pseudo mismatch"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lk7/q;)V
    .locals 9

    iget-object v0, p1, Lk7/f;->b:Lk7/p;

    invoke-static {p1}, Lg7/s;->a(Lk7/f;)Lg7/i;

    move-result-object v1

    iget-object v2, p1, Lk7/f;->a:Lk7/n;

    iget v3, v2, Lk7/n;->e:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v3, Lg7/e;

    invoke-virtual {p0, v3}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    iget-boolean v3, v2, Lk7/n;->f:Z

    iget-object v4, p1, Lk7/c;->e:Ll7/a;

    if-eqz v3, :cond_0

    new-instance v2, Lg7/f;

    iget-object p1, p1, Lk7/f;->d:Lk7/l;

    invoke-direct {v2, v1, v0, p1, v4}, Lg7/f;-><init>(Lg7/i;Lk7/p;Lk7/l;Ll7/a;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/messaging/q;->f()Lk7/k;

    move-result-object v3

    invoke-static {p1, v3}, Lg7/t;->c(Lk7/f;Lk7/k;)Lk7/l;

    move-result-object v5

    iget-boolean v6, v1, Lg7/i;->e:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v2, v2, Lk7/n;->a:I

    if-nez v6, :cond_2

    const/16 v6, 0x2b

    if-ne v2, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v7

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    if-ne v6, v7, :cond_5

    const/16 p1, 0x29

    if-ne v2, p1, :cond_4

    const/16 p1, 0x23

    iget v2, v1, Lg7/i;->a:I

    if-eq v2, p1, :cond_4

    new-instance p1, Lg7/u;

    invoke-direct {p1, v1, v0, v5}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lg7/f;

    invoke-direct {p1, v1, v0, v5, v4}, Lg7/f;-><init>(Lg7/i;Lk7/p;Lk7/l;Ll7/a;)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    :goto_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insn with result/move-result-pseudo mismatch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Lg7/g;)V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast p0, LL8/a;

    iget-object p0, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast p0, LP0/j;

    invoke-virtual {p0, p1}, LP0/j;->a(Lg7/g;)V

    return-void
.end method

.method public d(Lhc/b;Ljava/util/List;)LJb/f;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJb/F;

    invoke-direct {v0, p1, p2}, LJb/F;-><init>(Lhc/b;Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast p0, Lxc/e;

    invoke-virtual {p0, v0}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/f;

    return-object p0
.end method

.method public f()Lk7/k;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v0, Lk7/a;

    iget v0, v0, Lk7/a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast p0, Lg7/t;

    iget-object p0, p0, Lg7/t;->d:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Lk7/b;

    invoke-virtual {p0, v0}, Lk7/b;->k(I)Lk7/a;

    move-result-object p0

    iget-object p0, p0, Lk7/a;->b:Lk7/g;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/f;

    iget-object v0, p0, Lk7/f;->a:Lk7/n;

    iget v0, v0, Lk7/n;->a:I

    const/16 v2, 0x38

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lk7/f;->c:Lk7/k;

    return-object p0
.end method

.method public g(JLQ/m;LQ/m;)LQ/m;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    const-string v2, "initialValue"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "initialVelocity"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v2, LQ/m;

    if-nez v2, :cond_0

    invoke-virtual/range {p3 .. p3}, LQ/m;->c()LQ/m;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    :cond_0
    iget-object v2, v0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v2, LQ/m;

    const/4 v3, 0x0

    const-string v4, "velocityVector"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, LQ/m;->b()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    iget-object v6, v0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v6, LQ/m;

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, LQ/m;->a(I)F

    move-result v7

    iget-object v8, v0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v8, LG5/J2;

    const-wide/32 v9, 0xf4240

    div-long v9, p1, v9

    iget-object v8, v8, LG5/J2;->a:Ljava/lang/Object;

    check-cast v8, LP/d;

    invoke-virtual {v8, v7}, LP/d;->a(F)LP/c;

    move-result-object v7

    iget-wide v11, v7, LP/c;->c:J

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-lez v8, :cond_1

    long-to-float v8, v9

    long-to-float v9, v11

    div-float/2addr v8, v9

    goto :goto_1

    :cond_1
    const/high16 v8, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v8}, LP/b;->a(F)LP/a;

    move-result-object v8

    iget v9, v7, LP/c;->a:F

    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v9

    iget v8, v8, LP/a;->b:F

    mul-float/2addr v9, v8

    iget v7, v7, LP/c;->b:F

    mul-float/2addr v9, v7

    long-to-float v7, v11

    div-float/2addr v9, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v7

    invoke-virtual {v6, v9, v5}, LQ/m;->e(FI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v0, v0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v0, LQ/m;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v0, Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v1, Lcb/a;

    invoke-interface {v1}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO4/d;

    iget-object v2, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v2, Lo3/t;

    invoke-virtual {v2}, Lo3/t;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LN4/d;

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast p0, Lcb/a;

    invoke-interface {p0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LP4/c;

    new-instance v3, LN4/l;

    invoke-direct {v3, v0, v1, v2, p0}, LN4/l;-><init>(Ljava/util/concurrent/Executor;LO4/d;LN4/d;LP4/c;)V

    return-object v3
.end method

.method public h(Lk7/i;)V
    .locals 6

    iget-object v0, p1, Lk7/f;->a:Lk7/n;

    iget v1, v0, Lk7/n;->a:I

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lg7/s;->a(Lk7/f;)Lg7/i;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p1, Lk7/f;->c:Lk7/k;

    iget-object v4, p1, Lk7/f;->b:Lk7/p;

    iget v0, v0, Lk7/n;->e:I

    if-eq v0, v2, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v0, Lk7/a;

    iget-object v0, v0, Lk7/a;->c:Ln7/g;

    invoke-virtual {v0, v2}, Ln7/g;->f(I)I

    move-result v0

    new-instance v2, Lg7/v;

    invoke-static {p1, v3}, Lg7/t;->c(Lk7/f;Lk7/k;)Lk7/l;

    move-result-object p1

    iget-object v3, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v3, Lg7/t;

    iget-object v3, v3, Lg7/t;->e:Ljava/lang/Object;

    check-cast v3, LZ3/x;

    iget-object v3, v3, LZ3/x;->b:Ljava/lang/Object;

    check-cast v3, [Lg7/e;

    aget-object v0, v3, v0

    invoke-direct {v2, v1, v4, p1, v0}, Lg7/v;-><init>(Lg7/i;Lk7/p;Lk7/l;Lg7/e;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_0
    new-instance v2, Lg7/u;

    invoke-static {p1, v3}, Lg7/t;->c(Lk7/f;Lk7/k;)Lk7/l;

    move-result-object p1

    invoke-direct {v2, v1, v4, p1}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    :goto_1
    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    return-void
.end method

.method public i(Lk7/h;)V
    .locals 6

    iget-object v0, p1, Lk7/f;->b:Lk7/p;

    invoke-static {p1}, Lg7/s;->a(Lk7/f;)Lg7/i;

    move-result-object v1

    iget-object v2, p1, Lk7/f;->a:Lk7/n;

    iget v3, v2, Lk7/n;->a:I

    const/4 v4, 0x1

    iget v2, v2, Lk7/n;->e:I

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    iget-object v4, p1, Lk7/c;->e:Ll7/a;

    iget-object v5, p1, Lk7/f;->c:Lk7/k;

    if-ne v3, v2, :cond_0

    iget-object p1, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast p1, Lg7/t;

    iget-boolean v2, p1, Lg7/t;->a:Z

    if-nez v2, :cond_1

    check-cast v4, Ll7/j;

    iget v2, v4, Ll7/l;->a:I

    iget v3, p1, Lg7/t;->b:I

    iget p1, p1, Lg7/t;->c:I

    sub-int/2addr v3, p1

    add-int/2addr v3, v2

    iget-object p1, v5, Lk7/k;->b:Lm7/d;

    invoke-interface {p1}, Lm7/d;->getType()Lm7/c;

    move-result-object p1

    invoke-static {v3, p1}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object p1

    new-instance v2, Lg7/u;

    invoke-static {v5, p1}, Lk7/l;->l(Lk7/k;Lk7/k;)Lk7/l;

    move-result-object p1

    invoke-direct {v2, v1, v0, p1}, Lg7/k;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v5}, Lg7/t;->c(Lk7/f;Lk7/k;)Lk7/l;

    move-result-object p1

    new-instance v2, Lg7/f;

    invoke-direct {v2, v1, v0, p1, v4}, Lg7/f;-><init>(Lg7/i;Lk7/p;Lk7/l;Ll7/a;)V

    invoke-virtual {p0, v2}, Lcom/google/firebase/messaging/q;->c(Lg7/g;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public k(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseMessaging"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v1, Lo3/c;

    iget-object v1, v1, Lo3/c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast p0, Lac/q;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public m(ILhc/b;LOb/a;)LD4/d;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v0, Lac/q;

    new-instance v1, Lac/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lac/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lac/q;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast p0, Lo3/c;

    iget-object p1, p0, Lo3/c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lo3/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lo3/c;->a:Ljava/lang/Object;

    check-cast p0, LQ9/a;

    invoke-virtual {p0, p2, p3, p1}, LQ9/a;->u(Lhc/b;LOb/a;Ljava/util/List;)LD4/d;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized q(Ljava/lang/String;)Lu5/g;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v0, LN/f;

    invoke-virtual {v0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu5/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v0, Lu5/d;

    iget-object v1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lu5/d;->x(Landroid/content/Context;Ljava/lang/String;)Lu5/g;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p1}, Lu5/d;->v(Landroid/content/Context;Ljava/lang/String;)Lu5/g;

    move-result-object v0
    :try_end_1
    .catch Lu5/h; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "InstanceID/Store"

    const-string v1, "Stored data is corrupt, generating new identity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p0}, LH/B;->a(Landroid/content/Context;Lcom/google/firebase/messaging/q;)V

    iget-object v0, p0, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v0, Lu5/d;

    iget-object v1, p0, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lu5/d;->v(Landroid/content/Context;Ljava/lang/String;)Lu5/g;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-virtual {v1, p1, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
