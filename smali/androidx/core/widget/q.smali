.class public final Landroidx/core/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field public static final e:Landroidx/core/widget/n;


# instance fields
.field public final a:Landroidx/core/widget/RemoteViewsCompatService;

.field public final b:I

.field public final c:I

.field public d:Landroidx/core/widget/n;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/core/widget/n;

    const/4 v1, 0x0

    new-array v2, v1, [J

    new-array v1, v1, [Landroid/widget/RemoteViews;

    invoke-direct {v0, v2, v1}, Landroidx/core/widget/n;-><init>([J[Landroid/widget/RemoteViews;)V

    sput-object v0, Landroidx/core/widget/q;->e:Landroidx/core/widget/n;

    return-void
.end method

.method public constructor <init>(Landroidx/core/widget/RemoteViewsCompatService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/q;->a:Landroidx/core/widget/RemoteViewsCompatService;

    iput p2, p0, Landroidx/core/widget/q;->b:I

    iput p3, p0, Landroidx/core/widget/q;->c:I

    sget-object p1, Landroidx/core/widget/q;->e:Landroidx/core/widget/n;

    iput-object p1, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Landroidx/core/widget/q;->a:Landroidx/core/widget/RemoteViewsCompatService;

    const-string v1, "androidx.core.widget.prefs.RemoteViewsCompat"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "context.getSharedPrefere\u2026S_FILENAME, MODE_PRIVATE)"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Landroidx/core/widget/q;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/core/widget/q;->c:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RemoteViewsCompatServic"

    if-nez v1, :cond_0

    const-string v0, "No collection items were stored for widget "

    invoke-static {v4, v0, v3}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    sget-object v6, Landroidx/core/widget/o;->c:Landroidx/core/widget/o;

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v7, "decode(hexString, Base64.DEFAULT)"

    invoke-static {v1, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lcom/bumptech/glide/c;->a([BLsb/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/p;

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iget-object v7, v1, Landroidx/core/widget/p;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "Android version code has changed, not using stored collection items for widget "

    invoke-static {v4, v0, v3}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Couldn\'t retrieve version code for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Couldn\'t get version code, not using stored collection items for widget "

    invoke-static {v4, v0, v3}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, v1, Landroidx/core/widget/p;->c:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_3

    const-string v0, "App version code has changed, not using stored collection items for widget "

    invoke-static {v4, v0, v3}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, v1, Landroidx/core/widget/p;->a:[B

    sget-object v1, Landroidx/core/widget/o;->b:Landroidx/core/widget/o;

    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->a([BLsb/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to deserialize stored collection items for widget "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v5, :cond_4

    sget-object v5, Landroidx/core/widget/q;->e:Landroidx/core/widget/n;

    :cond_4
    iput-object v5, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    return-void
.end method

.method public final getCount()I
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    iget-object p0, p0, Landroidx/core/widget/n;->a:[J

    array-length p0, p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    iget-object p0, p0, Landroidx/core/widget/n;->a:[J

    aget-wide p0, p0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p0, -0x1

    :goto_0
    return-wide p0
.end method

.method public final bridge synthetic getLoadingView()Landroid/widget/RemoteViews;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getViewAt(I)Landroid/widget/RemoteViews;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    iget-object v0, v0, Landroidx/core/widget/n;->b:[Landroid/widget/RemoteViews;

    aget-object p0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Landroid/widget/RemoteViews;

    iget-object p0, p0, Landroidx/core/widget/q;->a:Landroidx/core/widget/RemoteViewsCompatService;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0e046c

    invoke-direct {p1, p0, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public final getViewTypeCount()I
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    iget p0, p0, Landroidx/core/widget/n;->d:I

    return p0
.end method

.method public final hasStableIds()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/widget/q;->d:Landroidx/core/widget/n;

    iget-boolean p0, p0, Landroidx/core/widget/n;->c:Z

    return p0
.end method

.method public final onCreate()V
    .locals 0

    invoke-virtual {p0}, Landroidx/core/widget/q;->a()V

    return-void
.end method

.method public final onDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Landroidx/core/widget/q;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method
