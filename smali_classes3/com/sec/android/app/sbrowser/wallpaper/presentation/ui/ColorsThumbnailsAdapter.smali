.class public final Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;,
        Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000  2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !B-\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u001dR\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001eR\u0016\u0010\t\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u001fR\u0016\u0010\n\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;",
        "Landroid/content/Context;",
        "context",
        "",
        "Landroid/graphics/Bitmap;",
        "colorsList",
        "",
        "marginsBetween",
        "thumbnailWidth",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;II)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;",
        "getItemCount",
        "()I",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;I)V",
        "newMargin",
        "newWidth",
        "updateWidthAndMargin",
        "(II)V",
        "Landroid/content/Context;",
        "Ljava/util/List;",
        "I",
        "Companion",
        "ColorsThumbnailsViewHolder",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final colorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private marginsBetween:I

.field private thumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorsList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->colorsList:Ljava/util/List;

    iput p3, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->marginsBetween:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->thumbnailWidth:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;ILandroid/view/View;)V
    .locals 1

    sget-object p2, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl;->Companion:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl$Companion;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->colorsList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    const-string p1, "Colors"

    invoke-virtual {p2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionNavigatorImpl$Companion;->launchQAWallpaperPreview(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->colorsList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;I)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->thumbnailWidth:I

    int-to-double v0, v0

    const-wide v2, 0x4001ae147ae147aeL    # 2.21

    mul-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->getCardView()Landroidx/cardview/widget/CardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->marginsBetween:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->thumbnailWidth:I

    int-to-float v2, v2

    iget-object v3, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    int-to-float v0, v0

    iget-object v2, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->getCardView()Landroidx/cardview/widget/CardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->getThumbnail()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->colorsList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;->getThumbnail()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Laa/a;

    const/16 v1, 0x8

    invoke-direct {v0, p2, v1, p0}, Laa/a;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "parent"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter$ColorsThumbnailsViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/ColorsThumbnailItemBinding;)V

    return-object p0
.end method

.method public final updateWidthAndMargin(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->marginsBetween:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/ColorsThumbnailsAdapter;->thumbnailWidth:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
