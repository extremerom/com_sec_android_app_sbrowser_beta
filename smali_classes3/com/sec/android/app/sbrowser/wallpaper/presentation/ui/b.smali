.class public final synthetic Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/b;->b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/b;->b:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->h(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;Ljava/util/Map;)V

    return-void

    :pswitch_0
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->j(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;->l(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;Landroid/net/Uri;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
