.class public final synthetic Lcom/sec/android/app/sbrowser/save_image/view/grid/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;->a:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;->b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;->c:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onItemChanged(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;->b:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;->c:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;->a:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->a(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method
