.class public final synthetic Lcom/sec/android/app/sbrowser/settings/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/P;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/P;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/P;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/settings/P;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/settings/P;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/P;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/P;->c:Landroid/widget/ImageView;

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/P;->a:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/P;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/P;->e:Landroid/content/Context;

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->a(ILjava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method
