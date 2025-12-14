.class public final Lcom/bumptech/glide/manager/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/r;


# static fields
.field public static volatile e:Lcom/bumptech/glide/manager/o;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/bumptech/glide/manager/o;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(LD5/d;Landroidx/emoji2/text/d;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/manager/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    iput-object p2, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/manager/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    new-instance v0, LW3/e;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LW3/e;-><init>(Landroid/content/Context;I)V

    new-instance p1, LS3/o;

    invoke-direct {p1, v0}, LS3/o;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/bumptech/glide/manager/l;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/l;-><init>(Lcom/bumptech/glide/manager/o;)V

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(LS3/o;Lcom/bumptech/glide/manager/l;)V

    iput-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/bumptech/glide/manager/o;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o;

    if-nez v0, :cond_1

    const-class v0, Lcom/bumptech/glide/manager/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bumptech/glide/manager/o;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/bumptech/glide/manager/o;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/manager/o;->e:Lcom/bumptech/glide/manager/o;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/o;->f()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/o;->f()V

    iget-object p0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    check-cast p1, LD5/k;

    check-cast p2, LR5/i;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/d;

    iget-object v0, v0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast v0, Lc5/m;

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    iget-object v2, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/emoji2/text/d;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    iput-object v3, v2, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, LR5/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p1, LD5/k;->b:LN/A;

    monitor-enter v2

    :try_start_1
    iget-object p0, p1, LD5/k;->b:LN/A;

    invoke-virtual {p0, v0}, LN/A;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, LD5/j;

    if-nez v8, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, LR5/i;->b(Ljava/lang/Object;)V

    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_1
    iget-object p0, v8, LD5/j;->b:Lcom/bumptech/glide/manager/o;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/o;->g()Landroidx/emoji2/text/d;

    move-result-object p0

    iput-object v3, p0, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    iput-object v3, p0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, LD5/k;->b()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, LD5/w;

    new-instance p1, Lcom/google/android/gms/internal/location/zzdb;

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    move-object v7, v8

    move-object v8, v3

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/location/zzdb;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v4, LD5/f;

    invoke-direct {v4, v3, p2}, LD5/f;-><init>(Ljava/lang/Boolean;LR5/i;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v3, p0, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, LD5/e;->a:I

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/location/zzdb;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 p1, 0x59

    invoke-virtual {p0, p1, p2}, LD5/a;->D0(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, LD5/w;

    new-instance v10, LD5/g;

    invoke-direct {v10, p2}, LD5/g;-><init>(LR5/i;)V

    new-instance p1, Lcom/google/android/gms/internal/location/zzdf;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    iget-object v3, p0, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v3, LD5/e;->a:I

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/location/zzdf;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 p1, 0x3b

    invoke-virtual {p0, p1, p2}, LD5/a;->D0(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p0}, LR5/i;->b(Ljava/lang/Object;)V

    :goto_0
    monitor-exit v2

    :goto_1
    return-void

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b()Lv/z;
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/o;->b:Z

    new-instance v0, LN/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/g;-><init>(I)V

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/u;

    iget-object v3, v3, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v3, v3, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, LN/g;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/u;

    iget-object v3, v2, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v3, v3, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, LN/g;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Document id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, v1, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    const-string v2, " cannot exist in both taken action and normal document"

    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v0, Lv/z;

    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lv/z;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public c(Lh4/c;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {p1}, Lh4/c;->clear()V

    :cond_3
    return v0
.end method

.method public e()V
    .locals 5

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/o;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v1, v0, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v1, LS3/o;

    invoke-virtual {v1}, LS3/o;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    :try_start_0
    invoke-virtual {v1}, LS3/o;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v0, v0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/manager/n;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    const-string v2, "ConnectivityMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Failed to register callback"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    iput-boolean v3, p0, Lcom/bumptech/glide/manager/o;->b:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/manager/o;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/manager/o;->b:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized g()Landroidx/emoji2/text/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public h(LR5/m;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i(LR5/h;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayDeque;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/o;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR5/m;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/manager/o;->b:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0, p1}, LR5/m;->a(LR5/h;)V

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/manager/o;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{numRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/manager/o;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/bumptech/glide/manager/o;->b:Z

    const-string v1, "}"

    invoke-static {v1, v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->k(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
