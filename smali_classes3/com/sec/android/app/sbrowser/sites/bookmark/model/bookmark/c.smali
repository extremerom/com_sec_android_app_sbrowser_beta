.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->d:Z

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->d:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/c;->e:Z

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Ljava/lang/String;ZZ)V

    return-void
.end method
