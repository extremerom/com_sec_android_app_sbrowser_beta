.class public final synthetic Lcom/sec/android/app/sbrowser/sites/provider/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;->a:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;->b:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;->c:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;->a:Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/a;->b:I

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->a(Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;IJ)V

    return-void
.end method
