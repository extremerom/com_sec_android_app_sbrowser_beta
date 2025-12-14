.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/net/Uri;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->a:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->e:Landroid/net/Uri;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->f:Z

    iput-boolean p7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->e:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->a:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->c:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->f:Z

    iget-boolean v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/g;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->c(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/net/Uri;ZZ)V

    return-void
.end method
