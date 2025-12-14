.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;JJLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->b:J

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->c:J

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->d:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->a:Landroid/app/Activity;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->b:J

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->c:J

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/d;->d:Landroid/net/Uri;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->b(Landroid/app/Activity;JJLandroid/net/Uri;)V

    return-void
.end method
