.class public final synthetic LN4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, LN4/f;->a:I

    iput-object p3, p0, LN4/f;->c:Ljava/lang/Object;

    iput-object p4, p0, LN4/f;->d:Ljava/lang/Object;

    iput p1, p0, LN4/f;->b:I

    iput-object p5, p0, LN4/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LN4/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN4/f;->c:Ljava/lang/Object;

    iput-object p2, p0, LN4/f;->d:Ljava/lang/Object;

    iput-object p3, p0, LN4/f;->e:Ljava/lang/Object;

    iput p4, p0, LN4/f;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LN4/f;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN4/f;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;

    iget-object v1, p0, LN4/f;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget v2, p0, LN4/f;->b:I

    iget-object p0, p0, LN4/f;->e:Ljava/lang/Object;

    check-cast p0, Landroid/os/ResultReceiver;

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;->a(Lorg/chromium/content/browser/input/InputMethodManagerWrapperImpl;Landroid/view/View;ILandroid/os/ResultReceiver;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LN4/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;

    iget-object v1, p0, LN4/f;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;

    iget-object v2, p0, LN4/f;->e:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget p0, p0, LN4/f;->b:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->b(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, LN4/f;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, LN4/f;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;

    iget v2, p0, LN4/f;->b:I

    iget-object p0, p0, LN4/f;->e:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;->a(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedTabMainAdapter;ILandroid/widget/ImageView;)V

    return-void

    :pswitch_2
    iget-object v0, p0, LN4/f;->d:Ljava/lang/Object;

    check-cast v0, LH4/k;

    iget v1, p0, LN4/f;->b:I

    iget-object v2, p0, LN4/f;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    iget-object p0, p0, LN4/f;->c:Ljava/lang/Object;

    check-cast p0, LN4/k;

    iget-object v3, p0, LN4/k;->f:LP4/c;

    :try_start_0
    iget-object v4, p0, LN4/k;->c:LO4/d;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, LAa/a;

    const/16 v6, 0x9

    invoke-direct {v5, v6, v4}, LAa/a;-><init>(ILjava/lang/Object;)V

    move-object v4, v3

    check-cast v4, LO4/h;

    invoke-virtual {v4, v5}, LO4/h;->f(LP4/b;)Ljava/lang/Object;

    iget-object v4, p0, LN4/k;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, LN4/k;->a(LH4/k;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance v4, LN4/g;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v1, v5}, LN4/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    check-cast v3, LO4/h;

    invoke-virtual {v3, v4}, LO4/h;->f(LP4/b;)Ljava/lang/Object;
    :try_end_0
    .catch LP4/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p0, p0, LN4/k;->d:LN4/d;

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, LN4/d;->a(LH4/k;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
