.class public final synthetic Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/c;->b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/c;->b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->m(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;Lcom/sec/android/app/sbrowser/wallpaper/data/CategoryCardViewListData;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->i(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;Lcom/sec/android/app/sbrowser/wallpaper/data/WallpaperGalleryFolderItemDto;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->n(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;Ljava/lang/String;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
