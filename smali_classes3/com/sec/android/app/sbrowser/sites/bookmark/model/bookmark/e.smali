.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/app/Activity;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:Z

.field public final synthetic i:Z

.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLandroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/net/Uri;Ljava/lang/String;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->b:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->d:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->e:Landroid/net/Uri;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->f:Ljava/lang/String;

    iput p7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->g:I

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->h:Z

    iput-boolean p9, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->i:Z

    iput-boolean p10, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->j:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->g:I

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->h:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->b:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->c:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->d:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->e:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->f:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->i:Z

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/e;->j:Z

    invoke-static/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->e(Ljava/lang/String;ZLandroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/net/Uri;Ljava/lang/String;IZZZ)V

    return-void
.end method
