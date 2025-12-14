.class public final synthetic Lcom/sec/android/app/sbrowser/download/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/Terrace;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/e;->a:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/download/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/download/e;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/download/e;->f:Z

    iput p7, p0, Lcom/sec/android/app/sbrowser/download/e;->g:I

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/download/e;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/e;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/download/e;->f:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/e;->a:Lcom/sec/terrace/Terrace;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/e;->d:Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/app/sbrowser/download/e;->g:I

    iget-boolean v7, p0, Lcom/sec/android/app/sbrowser/download/e;->h:Z

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->a(Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    return-void
.end method
