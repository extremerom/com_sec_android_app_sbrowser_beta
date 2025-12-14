.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/ImageView;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->d:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->e:Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    return-void
.end method


# virtual methods
.method public final onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->a:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->d:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/a;->e:Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/LoadHistoryIcon$NativeIconLoader;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/sbrowser/quickaccess/domain/HistoryIconItem;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method
