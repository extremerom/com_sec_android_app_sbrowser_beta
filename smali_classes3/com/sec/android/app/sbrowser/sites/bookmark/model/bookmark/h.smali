.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>([BIILandroid/app/Activity;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->a:[B

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->b:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->c:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->d:Landroid/app/Activity;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->b:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->c:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->a:[B

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->d:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/h;->e:J

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkUtil;->b([BIILandroid/app/Activity;J)V

    return-void
.end method
