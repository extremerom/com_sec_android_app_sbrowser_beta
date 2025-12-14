.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->b:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->c:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->b:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->c:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/v;->d:I

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->l(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;III)V

    return-void
.end method
