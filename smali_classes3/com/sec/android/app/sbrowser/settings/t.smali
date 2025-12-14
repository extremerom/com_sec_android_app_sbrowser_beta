.class public final synthetic Lcom/sec/android/app/sbrowser/settings/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:I

.field public final synthetic g:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/List;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/t;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/t;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/t;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/t;->e:Ljava/util/List;

    iput p6, p0, Lcom/sec/android/app/sbrowser/settings/t;->f:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/settings/t;->g:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 11

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/t;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/t;->e:Ljava/util/List;

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/t;->a:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/t;->c:Landroid/widget/ImageView;

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/t;->f:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/t;->g:Landroid/content/Context;

    move-object v7, p1

    move-object v8, p2

    move-wide v9, p3

    invoke-static/range {v0 .. v10}, Lcom/sec/android/app/sbrowser/settings/PermissionListAdapter;->a(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Ljava/util/List;ILandroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method
