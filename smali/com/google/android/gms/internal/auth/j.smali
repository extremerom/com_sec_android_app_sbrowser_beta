.class public final Lcom/google/android/gms/internal/auth/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ6/c;
.implements LRd/p;
.implements LT4/f;
.implements LR5/c;
.implements Lec/g;


# static fields
.field public static c:Lcom/google/android/gms/internal/auth/j;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lz7/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    new-instance p1, LD0/b;

    invoke-direct {p1}, LD0/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LJb/C;Lcom/google/firebase/messaging/q;)V
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 7

    packed-switch p2, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/auth/e;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/auth/e;-><init>(Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/auth/f;->a:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :pswitch_0
    new-instance p2, LL8/b;

    const/4 v5, 0x1

    const-string v3, "SamsungAnalytics.db"

    const/4 v0, 0x0

    const/4 v6, 0x1

    move-object v1, p2

    move-object v2, p1

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, LL8/b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;II)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "CREATE TABLE IF NOT EXISTS logs_v2 (_id INTEGER PRIMARY KEY AUTOINCREMENT, timestamp INTEGER, logtype TEXT, data TEXT)"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, LL8/b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "logs_v2"

    const-string p2, "timestamp <= 5"

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Li7/f;Ln7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "file == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag \"%s\" is longer than the %d character maximum"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;LQd/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    invoke-virtual {p2}, LQd/h;->b()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public static g(Li7/f;Ll7/a;)V
    .locals 3

    instance-of v0, p1, Ll7/c;

    if-eqz v0, :cond_0

    check-cast p1, Ll7/c;

    iget-object p1, p1, Ll7/c;->a:Ll7/b;

    iget-object v0, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll7/a;

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/auth/j;->g(Li7/f;Ll7/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Li7/f;->a(Ll7/a;)V

    :cond_1
    return-void
.end method

.method public static h(Ll7/a;)I
    .locals 1

    instance-of v0, p0, Ll7/e;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Ll7/s;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v0, p0, Ll7/f;

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    instance-of v0, p0, Ll7/j;

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    instance-of v0, p0, Ll7/o;

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    instance-of v0, p0, Ll7/i;

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    instance-of v0, p0, Ll7/g;

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    instance-of v0, p0, Ll7/t;

    if-eqz v0, :cond_7

    const/16 p0, 0x17

    return p0

    :cond_7
    instance-of v0, p0, Ll7/u;

    if-eqz v0, :cond_8

    const/16 p0, 0x18

    return p0

    :cond_8
    instance-of v0, p0, Ll7/h;

    if-eqz v0, :cond_9

    const/16 p0, 0x19

    return p0

    :cond_9
    instance-of v0, p0, Ll7/q;

    if-eqz v0, :cond_a

    const/16 p0, 0x1a

    return p0

    :cond_a
    instance-of v0, p0, Ll7/c;

    if-eqz v0, :cond_b

    const/16 p0, 0x1c

    return p0

    :cond_b
    instance-of v0, p0, Ll7/k;

    if-eqz v0, :cond_c

    const/16 p0, 0x1e

    return p0

    :cond_c
    instance-of p0, p0, Ll7/d;

    if-eqz p0, :cond_d

    const/16 p0, 0x1f

    return p0

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Shouldn\'t happen"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/gms/internal/auth/j;
    .locals 2

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/auth/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    iput-object v0, p1, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Failed to build documentUri from a tree: "

    invoke-static {v0, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not get document ID from Uri: "

    invoke-static {v0, p1}, LV0/c;->j(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/j;
    .locals 5

    const-class v0, Lcom/google/android/gms/internal/auth/j;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/j;->c:Lcom/google/android/gms/internal/auth/j;

    if-nez v1, :cond_1

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v1, v2, v3, v4}, LV0/a;->a(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/auth/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/auth/j;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/auth/j;

    const/4 p0, 0x0

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/j;-><init>(I)V

    :goto_0
    sput-object v1, Lcom/google/android/gms/internal/auth/j;->c:Lcom/google/android/gms/internal/auth/j;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/auth/j;->c:Lcom/google/android/gms/internal/auth/j;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x2

    sget v1, Lcom/google/android/gms/internal/auth/D;->b:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v2, "com.google.android.auth.IAuthManagerService"

    invoke-interface {p1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/auth/N;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/google/android/gms/internal/auth/N;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/auth/o;

    invoke-direct {v3, p1, v2, v0}, LD5/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    check-cast v3, Lcom/google/android/gms/internal/auth/o;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    iget-object v2, v3, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/auth/d;->b(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v0, p1}, LD5/a;->B0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/auth/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    if-eqz p1, :cond_3

    const-string p0, "Error"

    invoke-virtual {p1, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "booleanResult"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    new-instance p1, LT4/a;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    sget-object p1, LT4/b;->c:LG5/g4;

    const-string v0, "Service call returned null."

    invoke-virtual {p1, v0, p0}, LG5/g4;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Service unavailable."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/j;->q(I)Ldb/p;

    move-result-object p0

    iget-object p0, p0, Ldb/p;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public c(LQd/u;I)V
    .locals 2

    invoke-virtual {p1}, LQd/u;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, LQd/h;

    invoke-virtual {p1, v0, p2, p0}, LQd/u;->t(Ljava/lang/StringBuilder;ILQd/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, LI5/b;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v0, LO9/a;

    iget-object v0, v0, LO9/a;->b:Ljava/lang/Object;

    check-cast v0, LI3/d;

    iget-object v0, v0, LI3/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, LQ6/c;

    invoke-interface {p0}, LQ6/c;->d()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, LP6/g;

    check-cast p0, LP6/h;

    invoke-direct {v1, v0, p0}, LP6/g;-><init>(Landroid/content/Context;LP6/h;)V

    return-object v1
.end method

.method public e(I)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/j;->q(I)Ldb/p;

    move-result-object p0

    iget-object p1, p0, Ldb/p;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Ldb/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "."

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "/"

    const/4 v3, 0x0

    const/16 v6, 0x3e

    invoke-static/range {v1 .. v6}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public f(LQd/u;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, LQd/h;

    invoke-virtual {p1, v0, p2, p0}, LQd/u;->s(Ljava/lang/StringBuilder;ILQd/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, LI5/b;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, Lcc/N;

    iget-object p0, p0, Lcc/N;->b:Lic/v;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public i(Lcc/h;Lec/g;)LKb/c;
    .locals 10

    const-string v0, "proto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcc/h;->c:I

    invoke-static {p2, v0}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v1, LJb/C;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/messaging/q;

    invoke-static {v1, v0, v2}, LJb/y;->f(LJb/C;Lhc/b;Lcom/google/firebase/messaging/q;)LJb/f;

    move-result-object v0

    sget-object v1, Lfb/w;->a:Lfb/w;

    iget-object v2, p1, Lcc/h;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v0}, LAc/l;->f(LJb/l;)Z

    move-result v2

    if-nez v2, :cond_7

    sget v2, Lkc/e;->a:I

    sget-object v2, LJb/g;->ANNOTATION_CLASS:LJb/g;

    invoke-static {v0, v2}, Lkc/e;->n(LJb/l;LJb/g;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, LJb/f;->h()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "getConstructors(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->V(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LMb/j;

    if-eqz v2, :cond_7

    check-cast v2, LMb/v;

    invoke-virtual {v2}, LMb/v;->H()Ljava/util/List;

    move-result-object v1

    const-string v2, "getValueParameters(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lfb/C;->g(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, LMb/T;

    check-cast v4, LMb/n;

    invoke-virtual {v4}, LMb/n;->getName()Lhc/f;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcc/h;->d:Ljava/util/List;

    const-string v1, "getArgumentList(...)"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcc/f;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v4, v2, Lcc/f;->c:I

    invoke-static {p2, v4}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LMb/T;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v6, Ldb/j;

    iget v7, v2, Lcc/f;->c:I

    invoke-static {p2, v7}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v7

    check-cast v4, LMb/U;

    invoke-virtual {v4}, LMb/U;->getType()Lyc/w;

    move-result-object v4

    const-string v8, "getType(...)"

    invoke-static {v4, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Lcc/f;->d:Lcc/e;

    const-string v8, "getValue(...)"

    invoke-static {v2, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, p2}, Lcom/google/android/gms/internal/auth/j;->o(Lyc/w;Lcc/e;Lec/g;)Lmc/g;

    move-result-object v8

    invoke-virtual {p0, v8, v4, v2}, Lcom/google/android/gms/internal/auth/j;->j(Lmc/g;Lyc/w;Lcc/e;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v5, v8

    :cond_4
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected argument value: actual type "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcc/e;->c:Lcc/d;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " != expected type "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "message"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lmc/j;

    invoke-direct {v5, v2}, Lmc/j;-><init>(Ljava/lang/String;)V

    :cond_5
    invoke-direct {v6, v7, v5}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v5, v6

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v1}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    :cond_7
    new-instance p0, LKb/c;

    invoke-interface {v0}, LJb/f;->n()Lyc/A;

    move-result-object p1

    sget-object p2, LJb/S;->L:LJb/T;

    invoke-direct {p0, p1, v1, p2}, LKb/c;-><init>(Lyc/A;Ljava/util/Map;LJb/S;)V

    return-object p0
.end method

.method public j(Lmc/g;Lyc/w;Lcc/e;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p3, Lcc/e;->c:Lcc/d;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Luc/d;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    :goto_0
    const/16 v3, 0xa

    if-eq v2, v3, :cond_7

    const/16 v3, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v4, LJb/C;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v4}, Lmc/g;->a(LJb/C;)Lyc/w;

    move-result-object p0

    invoke-static {p0, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_3

    :cond_1
    instance-of v2, p1, Lmc/b;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Lmc/b;

    iget-object v3, v2, Lmc/g;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p3, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v3, v5, :cond_6

    invoke-interface {v4}, LJb/C;->j()LGb/i;

    move-result-object p1

    invoke-virtual {p1, p2}, LGb/i;->g(Lyc/w;)Lyc/w;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-object p2, v2, Lmc/g;->a:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    const-string v3, "<this>"

    invoke-static {p2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lzb/d;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-direct {v3, v0, p2, v1}, Lzb/b;-><init>(III)V

    instance-of p2, v3, Ljava/util/Collection;

    if-eqz p2, :cond_4

    move-object p2, v3

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    move-object v3, p2

    check-cast v3, Lzb/c;

    iget-boolean v3, v3, Lzb/c;->c:Z

    if-eqz v3, :cond_3

    move-object v3, p2

    check-cast v3, Lzb/c;

    invoke-virtual {v3}, Lzb/c;->b()I

    move-result v3

    iget-object v4, v2, Lmc/g;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmc/g;

    iget-object v5, p3, Lcc/e;->k:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcc/e;

    const-string v5, "getArrayElement(...)"

    invoke-static {v3, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p1, v3}, Lcom/google/android/gms/internal/auth/j;->j(Lmc/g;Lyc/w;Lcc/e;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Deserialized ArrayValue should have the same number of elements as the original array value: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p2}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    instance-of p1, p0, LJb/f;

    if-eqz p1, :cond_8

    check-cast p0, LJb/f;

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_3

    sget-object p1, LGb/i;->e:Lhc/f;

    sget-object p1, LGb/p;->Q:Lhc/d;

    invoke-static {p0, p1}, LGb/i;->b(LJb/f;Lhc/d;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_1

    :cond_9
    :goto_3
    return v0
.end method

.method public k()Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    const-string v0, "Failed query: "

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "document_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    :try_start_1
    invoke-interface {v7}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "DocumentFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    :try_start_3
    invoke-interface {v7}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_2
    move-exception p0

    throw p0

    :catch_3
    :cond_1
    :goto_0
    return p0

    :goto_1
    if-eqz v7, :cond_2

    :try_start_4
    invoke-interface {v7}, Ljava/lang/AutoCloseable;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    :catch_4
    move-exception p0

    throw p0

    :catch_5
    :cond_2
    :goto_2
    throw p0
.end method

.method public m(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, LL8/b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-wide v1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->c:Ljava/lang/String;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "logtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "logs_v2"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/nio/channels/FileChannel;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to lock file: \'"

    const-string v3, "\'."

    invoke-static {v2, v0, v3}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public o(Lyc/w;Lcc/e;Lec/g;)Lmc/g;
    .locals 3

    const-string v0, "value"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lec/e;->N:Lec/b;

    iget v1, p2, Lcc/e;->m:I

    invoke-virtual {v0, v1}, Lec/b;->c(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p2, Lcc/e;->c:Lcc/d;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Luc/d;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported annotation argument type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcc/e;->c:Lcc/d;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " (expected "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p2, p2, Lcc/e;->k:Ljava/util/List;

    const-string v0, "getArrayElementList(...)"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc/e;

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v2, LJb/C;

    invoke-interface {v2}, LJb/C;->j()LGb/i;

    move-result-object v2

    invoke-virtual {v2}, LGb/i;->e()Lyc/A;

    move-result-object v2

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v1, p3}, Lcom/google/android/gms/internal/auth/j;->o(Lyc/w;Lcc/e;Lec/g;)Lmc/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance p0, Lmc/y;

    invoke-direct {p0, v0, p1}, Lmc/y;-><init>(Ljava/util/List;Lyc/w;)V

    goto/16 :goto_5

    :pswitch_1
    new-instance p1, Lmc/a;

    iget-object p2, p2, Lcc/e;->j:Lcc/h;

    const-string v0, "getAnnotation(...)"

    invoke-static {p2, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/auth/j;->i(Lcc/h;Lec/g;)LKb/c;

    move-result-object p0

    invoke-direct {p1, p0}, Lmc/g;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object p0, p1

    goto/16 :goto_5

    :pswitch_2
    new-instance p0, Lmc/i;

    iget p1, p2, Lcc/e;->h:I

    invoke-static {p3, p1}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object p1

    iget p2, p2, Lcc/e;->i:I

    invoke-static {p3, p2}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmc/i;-><init>(Lhc/b;Lhc/f;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance p0, Lmc/t;

    iget p1, p2, Lcc/e;->h:I

    invoke-static {p3, p1}, LG5/m2;->b(Lec/g;I)Lhc/b;

    move-result-object p1

    iget p2, p2, Lcc/e;->l:I

    invoke-direct {p0, p1, p2}, Lmc/t;-><init>(Lhc/b;I)V

    goto/16 :goto_5

    :pswitch_4
    new-instance p0, Lmc/x;

    iget p1, p2, Lcc/e;->g:I

    invoke-interface {p3, p1}, Lec/g;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_5
    new-instance p0, Lmc/c;

    iget-wide p1, p2, Lcc/e;->d:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lmc/c;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    new-instance p0, Lmc/c;

    iget-wide p1, p2, Lcc/e;->f:D

    invoke-direct {p0, p1, p2}, Lmc/c;-><init>(D)V

    goto :goto_5

    :pswitch_7
    new-instance p0, Lmc/c;

    iget p1, p2, Lcc/e;->e:F

    invoke-direct {p0, p1}, Lmc/c;-><init>(F)V

    goto :goto_5

    :pswitch_8
    iget-wide p0, p2, Lcc/e;->d:J

    if-eqz v0, :cond_3

    new-instance p2, Lmc/z;

    invoke-direct {p2, p0, p1}, Lmc/z;-><init>(J)V

    :goto_4
    move-object p0, p2

    goto :goto_5

    :cond_3
    new-instance p2, Lmc/u;

    invoke-direct {p2, p0, p1}, Lmc/u;-><init>(J)V

    goto :goto_4

    :pswitch_9
    iget-wide p0, p2, Lcc/e;->d:J

    long-to-int p0, p0

    if-eqz v0, :cond_4

    new-instance p1, Lmc/z;

    invoke-direct {p1, p0}, Lmc/z;-><init>(I)V

    goto :goto_2

    :cond_4
    new-instance p1, Lmc/k;

    invoke-direct {p1, p0}, Lmc/k;-><init>(I)V

    goto :goto_2

    :pswitch_a
    iget-wide p0, p2, Lcc/e;->d:J

    long-to-int p0, p0

    int-to-short p0, p0

    if-eqz v0, :cond_5

    new-instance p1, Lmc/z;

    invoke-direct {p1, p0}, Lmc/z;-><init>(S)V

    goto/16 :goto_2

    :cond_5
    new-instance p1, Lmc/w;

    invoke-direct {p1, p0}, Lmc/w;-><init>(S)V

    goto/16 :goto_2

    :pswitch_b
    new-instance p0, Lmc/e;

    iget-wide p1, p2, Lcc/e;->d:J

    long-to-int p1, p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-direct {p0, p1}, Lmc/g;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_c
    iget-wide p0, p2, Lcc/e;->d:J

    long-to-int p0, p0

    int-to-byte p0, p0

    if-eqz v0, :cond_6

    new-instance p1, Lmc/z;

    invoke-direct {p1, p0}, Lmc/z;-><init>(B)V

    goto/16 :goto_2

    :cond_6
    new-instance p1, Lmc/d;

    invoke-direct {p1, p0}, Lmc/d;-><init>(B)V

    goto/16 :goto_2

    :goto_5
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onComplete(LR5/h;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p1, p1, Lcom/samsung/android/motionphoto/utils/ex/e;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, LR5/i;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public p(Ljava/lang/String;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, LL8/b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->a:Ljava/lang/String;

    const-string v1, "data"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->c:Ljava/lang/String;

    const-string v1, "timestamp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->b:J

    const-string v1, "logtype"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    :goto_1
    iput-object v2, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;->d:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/b;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public q(I)Ldb/p;
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v3, Lcc/M;

    iget-object v3, v3, Lcc/M;->b:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcc/L;

    iget v3, p1, Lcc/L;->d:I

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v4, Lcc/N;

    iget-object v4, v4, Lcc/N;->b:Lic/v;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Lcc/L;->e:Lcc/K;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    sget-object v5, Lec/h;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    const/4 v2, 0x3

    if-ne v4, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    move v2, v5

    goto :goto_1

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_1
    iget p1, p1, Lcc/L;->c:I

    goto :goto_0

    :cond_3
    new-instance p0, Ldb/p;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Ldb/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public r(Ll7/c;Z)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast v0, Ln7/b;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ln7/b;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object p1, p1, Ll7/c;->a:Ll7/b;

    iget-object v2, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, v2

    if-eqz p2, :cond_1

    invoke-static {v2}, Lqd/d;->f(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "  size: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln7/b;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v2}, Ln7/b;->m(I)I

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_9

    invoke-virtual {p1, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll7/a;

    const/16 v5, 0x20

    if-eqz p2, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/j;->h(Ll7/a;)I

    move-result v7

    const/16 v8, 0x1e

    if-ne v7, v8, :cond_2

    const-string v7, "null"

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ll7/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ln7/h;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ln7/b;->c(Ljava/lang/String;)V

    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/j;->h(Ll7/a;)I

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_7

    const/4 v8, 0x6

    if-eq v6, v8, :cond_7

    const/4 v8, 0x2

    if-eq v6, v8, :cond_7

    if-eq v6, v7, :cond_6

    const/4 v8, 0x4

    if-eq v6, v8, :cond_7

    const/16 v7, 0x10

    if-eq v6, v7, :cond_5

    const/16 v5, 0x11

    if-eq v6, v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v5, Li7/f;

    packed-switch v6, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast v4, Ll7/d;

    iget v4, v4, Ll7/l;->a:I

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v4, v6

    invoke-virtual {v0, v4}, Ln7/b;->i(I)V

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {v0, v6}, Ln7/b;->i(I)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v0, v6}, Ln7/b;->i(I)V

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_3
    invoke-virtual {v0, v6}, Ln7/b;->i(I)V

    check-cast v4, Ll7/c;

    invoke-virtual {p0, v4, v1}, Lcom/google/android/gms/internal/auth/j;->r(Ll7/c;Z)V

    goto/16 :goto_4

    :pswitch_4
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_5
    iget-object v5, v5, Li7/f;->i:Li7/v;

    check-cast v4, Ll7/q;

    invoke-virtual {v5, v4}, Li7/v;->l(Ll7/q;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->t(IJ)V

    goto :goto_4

    :pswitch_6
    iget-object v5, v5, Li7/f;->h:Li7/l;

    check-cast v4, Ll7/h;

    invoke-virtual {v5, v4}, Li7/l;->l(Ll7/h;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->t(IJ)V

    goto :goto_4

    :pswitch_7
    iget-object v5, v5, Li7/f;->f:Li7/B;

    check-cast v4, Ll7/u;

    invoke-virtual {v5, v4}, Li7/B;->m(Ll7/u;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->t(IJ)V

    goto :goto_4

    :pswitch_8
    iget-object v5, v5, Li7/f;->e:Li7/B;

    check-cast v4, Ll7/t;

    invoke-virtual {v5, v4}, Li7/B;->l(Ll7/t;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->t(IJ)V

    goto :goto_4

    :cond_4
    check-cast v4, Ll7/g;

    iget-wide v4, v4, Ll7/m;->a:J

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->s(IJ)V

    goto :goto_4

    :cond_5
    check-cast v4, Ll7/i;

    iget v4, v4, Ll7/l;->a:I

    int-to-long v7, v4

    shl-long v4, v7, v5

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->s(IJ)V

    goto :goto_4

    :cond_6
    check-cast v4, Ll7/n;

    invoke-virtual {v4}, Ll7/n;->k()J

    move-result-wide v4

    invoke-virtual {p0, v6, v4, v5}, Lcom/google/android/gms/internal/auth/j;->t(IJ)V

    goto :goto_4

    :cond_7
    check-cast v4, Ll7/n;

    invoke-virtual {v4}, Ll7/n;->k()J

    move-result-wide v4

    const/16 v8, 0x3f

    shr-long v8, v4, v8

    xor-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x48

    shr-int/lit8 v7, v8, 0x3

    add-int/lit8 v8, v7, -0x1

    shl-int/lit8 v8, v8, 0x5

    or-int/2addr v6, v8

    invoke-virtual {v0, v6}, Ln7/b;->i(I)V

    :goto_3
    if-lez v7, :cond_8

    long-to-int v6, v4

    int-to-byte v6, v6

    invoke-virtual {v0, v6}, Ln7/b;->i(I)V

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz p2, :cond_a

    invoke-virtual {v0}, Ln7/b;->e()V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public s(IJ)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v0, 0x8

    rsub-int/lit8 v1, v1, 0x40

    shr-long/2addr p2, v1

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, Ln7/b;

    invoke-virtual {p0, p1}, Ln7/b;->i(I)V

    :goto_0
    if-lez v0, :cond_1

    long-to-int p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ln7/b;->i(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t(IJ)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, v0, -0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr p1, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->b:Ljava/lang/Object;

    check-cast p0, Ln7/b;

    invoke-virtual {p0, p1}, Ln7/b;->i(I)V

    :goto_0
    if-lez v0, :cond_1

    long-to-int p1, p2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ln7/b;->i(I)V

    const/16 p1, 0x8

    shr-long/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/auth/U;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Lcom/google/android/gms/internal/auth/U;-><init>(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/U;->d()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/U;->d()Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    const-string v0, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Unable to read GServices for: "

    if-eqz v2, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v2, "GservicesLoader"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
