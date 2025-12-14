.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GalleryFolderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R(\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Landroid/view/View;",
        "itemView",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Landroid/view/View;)V",
        "",
        "Landroid/widget/ImageView;",
        "imageList",
        "Ljava/util/List;",
        "getImageList",
        "()Ljava/util/List;",
        "setImageList",
        "(Ljava/util/List;)V",
        "Landroid/widget/TextView;",
        "folderName",
        "Landroid/widget/TextView;",
        "getFolderName",
        "()Landroid/widget/TextView;",
        "setFolderName",
        "(Landroid/widget/TextView;)V",
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


# instance fields
.field private folderName:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->this$0:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/ImageView;

    const v0, 0x7f0b0d54

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f0b0d55

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const v0, 0x7f0b0d56

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    const v0, 0x7f0b0d57

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    invoke-static {p1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->imageList:Ljava/util/List;

    const p1, 0x7f0b053c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "findViewById(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->folderName:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getFolderName()Landroid/widget/TextView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->folderName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getImageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionGalleryFolderAdapter$GalleryFolderViewHolder;->imageList:Ljava/util/List;

    return-object p0
.end method
