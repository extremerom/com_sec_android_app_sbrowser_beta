.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u001eB)\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ+\u0010\u0010\u001a\u00020\u00072\n\u0010\u000b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J#\u0010\u0015\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0018\u001a\u00020\u00072\n\u0010\u000b\u001a\u00060\u0002R\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001cR \u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;",
        "",
        "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
        "galleryFolderList",
        "Lkotlin/Function1;",
        "Ldb/r;",
        "onFolderClick",
        "<init>",
        "(Ljava/util/List;Lsb/k;)V",
        "holder",
        "Landroid/net/Uri;",
        "uri",
        "",
        "index",
        "uriToThumbnailHolder",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;",
        "position",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;I)V",
        "getItemCount",
        "()I",
        "Ljava/util/List;",
        "Lsb/k;",
        "GalleryFolderViewHolder",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final galleryFolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onFolderClick:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lsb/k;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;",
            ">;",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "galleryFolderList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFolderClick"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->galleryFolderList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->onFolderClick:Lsb/k;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->onBindViewHolder$lambda$3(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$uriToThumbnailHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->uriToThumbnailHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->onBindViewHolder$lambda$2$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$2$lambda$1(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V
    .locals 8

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v7, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$onBindViewHolder$2$1$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$onBindViewHolder$2$1$1;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;ILib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v7, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final onBindViewHolder$lambda$3(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->onFolderClick:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final uriToThumbnailHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V
    .locals 4

    :try_start_0
    iget-object p0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/bumptech/glide/b;->e(Landroid/view/View;)Lcom/bumptech/glide/l;

    move-result-object p0

    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/bumptech/glide/j;

    iget-object v2, p0, Lcom/bumptech/glide/l;->a:Lcom/bumptech/glide/b;

    iget-object v3, p0, Lcom/bumptech/glide/l;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/bumptech/glide/j;-><init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/l;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/j;->C(Landroid/net/Uri;)Lcom/bumptech/glide/j;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, LZ3/n;->d:LZ3/n;

    new-instance v0, LZ3/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, v0}, Lh4/a;->s(LZ3/n;LZ3/e;)Lh4/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getImageList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lh4/a;->g(II)Lh4/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/j;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getImageList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getImageList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->galleryFolderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;I)V
    .locals 6
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->galleryFolderList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getFolderName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getImageList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;->getImageUris()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->getImageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v5, LN4/f;

    invoke-direct {v5, p0, p1, v2, v1}, LN4/f;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;Landroid/net/Uri;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v0, LFa/b;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p0, p2}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e090e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Landroid/view/View;)V

    return-object p2
.end method
