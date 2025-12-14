.class public final Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private final mEntry:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

.field private mHasErrors:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mEntry:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mEntry:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    return-object p0
.end method

.method private abort()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mHasErrors:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->abort()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mHasErrors:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mEntry:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->b(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;->e(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Z)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->this$0:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mEntry:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->a(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor$FaultHidingOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;->mEntry:Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;->h(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Entry;I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/sec/android/app/sbrowser/common/utils/DiskLruCache$Editor;Ljava/io/FileOutputStream;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
