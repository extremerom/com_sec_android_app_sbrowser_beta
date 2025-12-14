.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorsThumbnailsViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000c\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;",
        "binding",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;)V",
        "Landroid/widget/ImageView;",
        "thumbnail",
        "Landroid/widget/ImageView;",
        "getThumbnail",
        "()Landroid/widget/ImageView;",
        "Landroidx/cardview/widget/CardView;",
        "cardView",
        "Landroidx/cardview/widget/CardView;",
        "getCardView",
        "()Landroidx/cardview/widget/CardView;",
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
.field private final cardView:Landroidx/cardview/widget/CardView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final thumbnail:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;->colorThumbnailImage:Landroid/widget/ImageView;

    const-string v1, "colorThumbnailImage"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;->colorThumbnailCardView:Landroidx/cardview/widget/CardView;

    const-string v0, "colorThumbnailCardView"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    return-void
.end method


# virtual methods
.method public final getCardView()Landroidx/cardview/widget/CardView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method public final getThumbnail()Landroid/widget/ImageView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->thumbnail:Landroid/widget/ImageView;

    return-object p0
.end method
